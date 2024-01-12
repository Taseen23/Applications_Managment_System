import 'dart:convert';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:mcbp_practicum/Controller/paymentcontroller.dart';
import '../utils/routes.dart';
import 'package:http/http.dart' as http;

class Report extends StatefulWidget {
  @override
  State<Report> createState() => _ReportState();
}

class _ReportState extends State<Report> {
  Map<String, dynamic>? paymentIntent;

  var obj = PaymentController();
  TextEditingController _nidController = TextEditingController();
  TextEditingController _amountController = TextEditingController(); // New controller for "Amount"

  Query? _query;

  late FirebaseFirestore _firestore;

  late CollectionReference _usersCollection;

  String selectedOption = 'Bikash';

  @override
  void initState() {
    super.initState();
    _firestore = FirebaseFirestore.instance;
    _usersCollection = _firestore.collection('Accept');
    _query = _usersCollection.orderBy('nid');
  }

  void _updateQuery() {
    setState(() {
      _query = _usersCollection.where('NID', isEqualTo: _nidController.text).limit(1);
    });
  }

  void _storeDataAndSubmit() {
    if (_query != null) {
      _query!.get().then((querySnapshot) {
        if (querySnapshot.docs.isNotEmpty) {
          Map<String, dynamic> data = querySnapshot.docs.first.data() as Map<String, dynamic>;

          String amount = _amountController.text; // Get the "Amount" value

          _firestore.collection(selectedOption).add({
            'NID': data['NID'],
            'Name': data['Name'],
            'Mobile No': data['Mobile No'],
            'AcceptStatus': selectedOption,
            'Amount': amount,
          }).then((value) {
            print('Data stored successfully in $selectedOption table');
          }).catchError((error) {
            print('Error storing data in $selectedOption table: $error');
          });
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MCBP"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 100.0,
                ),
                Text(
                  "Benificiary List",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
                ),
                SizedBox(
                  height: 30.0,
                ),
                SizedBox(
                  width: 300,
                  child: TextFormField(
                    controller: _nidController,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      hintText: "Enter NID",
                      labelText: "Enter NID",
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Container(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    onPressed: () {
                      _updateQuery();
                    },
                    child: Text('Search'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xffd97348),
                    ),
                  ),
                ),
                if (_query != null)
                  StreamBuilder(
                    stream: _query!.snapshots(),
                    builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return CircularProgressIndicator();
                      } else if (snapshot.hasError) {
                        return Text('Error: ${snapshot.error}');
                      } else {
                        List<DataRow> rows = snapshot.data!.docs.map((DocumentSnapshot document) {
                          Map<String, dynamic> data = document.data() as Map<String, dynamic>;

                          return DataRow(
                            cells: [
                              DataCell(Text(data['NID']?.toString() ?? '')),
                              DataCell(Text(data['Name']?.toString() ?? '')),
                              DataCell(Text(data['Mobile No']?.toString() ?? '')),
                              DataCell(Text(data['Account No']?.toString() ?? '')),
                            ],
                          );
                        }).toList();

                        return DataTable(
                          columns: [
                            DataColumn(label: Text('NID')),
                            DataColumn(label: Text('Name')),
                            DataColumn(label: Text('Mobile No')),
                            DataColumn(label: Text('Account No')),
                          ],
                          rows: rows,
                          columnSpacing: 12.0,
                        );
                      }
                    },
                  ),
                Container(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Text('Payment Mode:'),
                      DropdownButton<String>(
                        value: selectedOption,
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedOption = newValue!;
                          });
                        },
                        items: <String>['Bikash', 'Nagad'].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                      SizedBox(
                        width: 300,
                        child: TextFormField(
                          controller: _amountController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            hintText: "Enter Amount",
                            labelText: "Amount",
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          _storeDataAndSubmit();
                          makePayment();
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: Text("Initiate Payment Successfully"),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pushNamed(
                                        context,
                                        MyRoutes.dashboard,
                                      );
                                    },
                                    child: Text("OK"),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        child: Text("Please Pay"),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xffd97348),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> makePayment() async {
    try {
      paymentIntent = await createPaymentIntent('100', 'USD');

      var gpay = PaymentSheetGooglePay(
        merchantCountryCode: "USD",
        currencyCode: "USD",
        testEnv: true,
      );

      await Stripe.instance.initPaymentSheet(
        paymentSheetParameters: SetupPaymentSheetParameters(
          paymentIntentClientSecret: paymentIntent!['client_secret']!,
          style: ThemeMode.light,
          merchantDisplayName: 'Taseen',
          googlePay: gpay,
        ),
      );

      await Stripe.instance.presentPaymentSheet().then((value) {
        print("Payment Successfully");
      });
    } catch (err) {
      print(err);
    }
  }

  Future<Map<String, dynamic>> createPaymentIntent(String amount, String currency) async {
    try {
      Map<String, dynamic> body = {
        'amount': amount,
        'currency': currency,
      };

      var response = await http.post(
        Uri.parse('https://api.stripe.com/v1/payment_intents'),
        headers: {
          'Authorization': 'Bearer sk_test_51OTKxSJqHrW7Yr6bwZzOI4WxgZlGM29e0X2FPlhwCSiMCAXoYcGkRsPKtQhvncroPtlOWdi8Cwxh1vxm0YE01Yi600486wCigE',
          'Content-Type': 'application/x-www-form-urlencoded',
        },
        body: body,
      );
      return json.decode(response.body);
    } catch (err) {
      throw Exception(err.toString());
    }
  }
}
