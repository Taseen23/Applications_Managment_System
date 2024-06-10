import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:mcbp_practicum/Controller/paymentcontroller.dart';
import '../utils/routes.dart';

class BenificariesUser extends StatefulWidget {
  @override
  State<BenificariesUser> createState() => BenificariesUserState();
}

class BenificariesUserState extends State<BenificariesUser> {
  var obj = PaymentController();
  TextEditingController _nidController = TextEditingController();

  Query? _query;

  late FirebaseFirestore _firestore;

  late CollectionReference _usersCollection;

  String selectedOption = 'Bikash';

  void initState() {
    super.initState();
    _firestore = FirebaseFirestore.instance;
    _usersCollection = _firestore.collection('Accept');
    //_updateQuery();
    _query = _usersCollection.orderBy('nid');
  }

  void _updateQuery() {
    setState(() {
      _query = _usersCollection
          .where('NID', isEqualTo: _nidController.text)
          .limit(1);
    });
  }

  void _storeDataAndSubmit() {
    // Get the selected applicant data
    if (_query != null) {
      _query!.get().then((querySnapshot) {
        if (querySnapshot.docs.isNotEmpty) {
          Map<String, dynamic> data =
              querySnapshot.docs.first.data() as Map<String, dynamic>;
          // Store the data in the appropriate table based on the selected option
          _firestore.collection(selectedOption).add({
            'NID': data['NID'],
            'Name': data['Name'],
            'Mobile No': data['Mobile No'],
            'AcceptStatus': selectedOption,
          }).then((value) {
            // Perform any additional actions after storing data if needed
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
        backgroundColor: Color.fromARGB(255, 132, 170, 201),
        title: Text(
          "MCBP",
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          child: Container(
              /*
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFF7ebcd9),
                      Color(0xFFbb9af5),

                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  )
              ),

             */
              child: Center(
                  child: Column(children: [
        SizedBox(
          height: 100.0,
        ),
        Text(
          "Benificary List",
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
          child: TextFormField
              //Padding(padding: Size.fromWidth(20), Size.fromHeight(30),
              (
            controller: _nidController,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(12)),
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
              //     searchApplicant(textController.text);
              /*

                          Navigator.pushNamed(
                            context,
                            MyRoutes.lognipage,
                          );

                           */
            },
            child: Text('Search'),
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
                List<DataRow> rows =
                    snapshot.data!.docs.map((DocumentSnapshot document) {
                  Map<String, dynamic> data =
                      document.data() as Map<String, dynamic>;

                  return DataRow(
                    cells: [
                      DataCell(Text(data['NID']?.toString() ?? '')),
                      DataCell(Text(data['Name']?.toString() ?? '')),
                      //    DataCell(Text(data['Payment Mode'])),
                      DataCell(Text(data['Mobile No']?.toString() ?? '')),
                      DataCell(Text(data['Account No']?.toString() ?? '')),
                    ],
                  );
                }).toList();

                return DataTable(
                  columns: [
                    DataColumn(label: Text('NID')),

                    DataColumn(label: Text('Name')),
                    //  DataColumn(label: Text('Payment Mode')),
                    DataColumn(label: Text('Mobile No')),
                    DataColumn(label: Text('Account No')),
                  ],
                  rows: rows,
                  columnSpacing: 12.0,
                );
              }
            },
          ),
      ])))),
    );
  }
}
