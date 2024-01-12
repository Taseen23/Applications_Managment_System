import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:path/path.dart' as path;

import '../Controller/paymentcontroller.dart';

class ReportGen extends StatefulWidget {
  @override
  State<ReportGen> createState() => _ReportGenState();
}

class _ReportGenState extends State<ReportGen> {
  int totalAmount = 0;
  var obj = PaymentController();

  late FirebaseFirestore _firestore;
  late CollectionReference _usersCollection;

  void initState() {
    super.initState();
    _firestore = FirebaseFirestore.instance;
    _usersCollection = _firestore.collection('Bikash');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MCBP"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 100.0,
              ),
              Text(
                "Beneficiary List",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Container(
                width: 300,
                child: TextFormField(
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
                    // No need to update query here
                    // Just display all data and calculate the totalAmount
                    _usersCollection.get().then((querySnapshot) {
                      if (querySnapshot.docs.isNotEmpty) {
                        totalAmount = 0; // Reset totalAmount

                        querySnapshot.docs.forEach((document) {
                          Map<String, dynamic> data = document.data() as Map<String, dynamic>;
                          int amount = int.tryParse(data['Amount'] ?? '0') ?? 0;
                          totalAmount += amount;
                        });

                        setState(() {}); // Trigger a rebuild to update the UI
                      }
                    });
                  },
                  child: Text('Display All Data'),
                ),
              ),
              StreamBuilder(
                stream: _usersCollection.snapshots(),
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
                          DataCell(Text(data['Amount']?.toString() ?? '')),
                        ],
                      );
                    }).toList();

                    return DataTable(
                      columns: [
                        DataColumn(label: Text('NID')),
                        DataColumn(label: Text('Name')),
                        DataColumn(label: Text('Mobile No')),
                        DataColumn(label: Text('Amount')),
                      ],
                      rows: rows,
                      columnSpacing: 12.0,
                    );
                  }
                },
              ),
              if (totalAmount != 0) // Display total amount only if it's not zero
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Total Amount: $totalAmount',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
