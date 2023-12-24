import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class FinalSelection extends StatefulWidget {


  @override
  State<FinalSelection> createState() => _FinalSelectionState();
}

class _FinalSelectionState extends State<FinalSelection> {
  TextEditingController _nidController = TextEditingController();
  Query? _query;
  late FirebaseFirestore _firestore;
  late CollectionReference _usersCollection;

  @override
  void initState() {
    super.initState();
    _firestore = FirebaseFirestore.instance;
    _usersCollection = _firestore.collection('Applicant');
    //_updateQuery();
    _query = _usersCollection.orderBy('nid');
  }
  void _updateQuery() {
    setState(() {
      _query = _usersCollection.where('NID', isEqualTo: _nidController.text).limit(1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                  child:


                  Column(
                      children: [
                        SizedBox(
                          height: 100.0,
                        ),

                        Text(
                          "Applicant List",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                        Padding(
                          padding:
                          const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
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
                                  borderRadius: BorderRadius.circular(12)
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
                              //     searchApplicant(textController.text);
                              /*

                          Navigator.pushNamed(
                            context,
                            MyRoutes.lognipage,
                          );

                           */
                            }  ,
                            child:Text('Search'),


                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xffd97348),

                              //Color(0xffeb6f1c),

                            ),

                          ),

                        ),
                        if(_query!=null)
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
                                    DataCell(Text(data['NID'])),
                                    DataCell(Text(data['Name'])),
                                //    DataCell(Text(data['Payment Mode'])),
                                    DataCell(Text(data['Mobile No'])),
                                    DataCell(
                                      ElevatedButton(
                                        onPressed: () {
                                          // Handle accept status button click
                                          // You can add your logic to update the accept status here
                                        },
                                        child: Text('Accept'),
                                      ),
                                    ),
                                  ],
                                );
                              }).toList();

                              return DataTable(
                                columns: [


                                  DataColumn(label: Text('NID')),
                                  DataColumn(label: Text('Name')),
                                //  DataColumn(label: Text('Payment Mode')),
                                  DataColumn(label: Text('Mobile No')),
                                  DataColumn(label: Text('Accept Status')),
                                ],
                                rows: rows,
                                columnSpacing: 12.0,
                              );
                            }
                          },
                        ),
                      ]
                  )
              )

          )

      ),
    );
  }
}