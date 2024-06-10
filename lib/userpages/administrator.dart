import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mcbp_practicum/Controller/database.dart';

import '../utils/routes.dart';

class Admin extends StatefulWidget {
  const Admin({super.key});

  @override
  State<Admin> createState() => _AdminState();
}

class _AdminState extends State<Admin> {
  late String father, mother, nid;
  // late String selectedOption;

  final List<String> options = [
    'LMA',
    'MCBP',
    'অন্যান্য',
  ];
  final List<String> options1 = [
    'ব্যবহারকারীর ধরণ',
    'মন্ত্রণালয়',
    'পরিচালক দপ্তর',
    'অন্যান্য',
  ];
  final List<String> options2 = [
    'সক্রিয়',
    'নিসক্রিয়',
    'পাসওয়ার্ড',
  ];
  final List<String> options3 = [
    'এডমিন',
  ];

  TextEditingController textEditingController = TextEditingController();
  searchApplicant(String name) async {
    QuerySnapshot querySnapshot =
        await DatabaseMetgods().getapplicantInfo(name);
    nid = "${querySnapshot.docs[0]["NID"]}";
    father = "${querySnapshot.docs[0]["Father Name"]}";
    mother = "${querySnapshot.docs[0]["Mother Name"]}";
    setState(() {});
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
                /*
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFF7ebcd9),
                      Color(0xFFbb9af5),

                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  )

                 */
              ),

             */
                child: Center(
                    child: Column(children: [
          SizedBox(
            height: 100.0,
          ),
          Text(
            "List Of Users",
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
            height: 20.0,
          ),
          SizedBox(
            width: 300,
            child: TextFormField
                //Padding(padding: Size.fromWidth(20), Size.fromHeight(30),
                (
              // controller: _firstnameController,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(12)),
                hintText: "NID",
                labelText: "NID",
              ),
            ),
          ),
          /*
                    SizedBox(
                      height: 20.0,
                    ),
                    SizedBox(
                      width: 300,
                      child: TextFormField(
                        //  controller: _lastnameController,
                        decoration: InputDecoration(
                            suffixIcon: DropdownButton<String>(

                              // value: selectedOption,
                              onChanged: (String? newValue) {
                                setState(() {
                                  selectedOption = newValue!;
                                });
                              },
                              items: options.map((option) {
                                return DropdownMenuItem<String>(
                                  value: option,
                                  child: Text(option),
                                );
                              }).toList(),
                            ),

                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(12)
                          ),
                          hintText: " --বেছে নিন-- ",
                          labelText: "কর্মসূচি",
                        ),
                      ),
                    ),
                   // SizedBox(width: 16),

                    SizedBox(
                      height: 20.0,
                    ),

                    SizedBox(
                      width: 300,
                      child: TextFormField(

                        //  controller: _emailController,

                        decoration: InputDecoration(
                          suffixIcon: DropdownButtonFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                //borderRadius: BorderRadius.circular(10)
                              )
                            ),

                            // value: selectedOption,
                            onChanged: (value) {
                              setState(() {
                                selectedOption = value.toString();
                              });
                            },
                            items: options1.map((e) {
                              return DropdownMenuItem(
                                value: e,
                                child: Text(e),
                              );
                            }).toList(),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(12)
                          ),
                          hintText: "--বেছে নিন--",
                          labelText: "ব্যবহারকারীর ধরণ",
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    SizedBox(
                      width: 300,
                      child: TextFormField(
                        //   controller: _passwordController,

                        obscureText: true,
                        decoration: InputDecoration(
                          suffixIcon: DropdownButton<String>(

                            // value: selectedOption,
                            onChanged: (value) {
                              setState(() {
                                selectedOption = value.toString();
                              });
                            },
                            items: options2.map((option) {
                              return DropdownMenuItem<String>(
                                value: option,
                                child: Text(option),
                              );
                            }).toList(),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(12)
                          ),
                          hintText: "--বেছে নিন--",
                          labelText: "স্ট্যাটাস",
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    SizedBox(
                      width: 300,
                      child: TextFormField(
                        //  controller: _confirmpasswordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          suffixIcon: DropdownButton<String>(

                            // value: selectedOption,
                            onChanged: (value) {
                              setState(() {
                                selectedOption = value.toString();
                              });
                            },
                            items: options3.map((option) {
                              return DropdownMenuItem<String>(
                                value: option,
                                child: Text(option),
                              );
                            }).toList(),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(12)
                          ),
                          hintText: "--বেছে নিন--",
                          labelText: "ব্যবহারকারীর রোল/(Role)",
                        ),
                      ),
                    ),
                    */
          SizedBox(
            height: 200.0,
          ),
          Container(
            alignment: Alignment.center,
            child: ElevatedButton(
              onPressed: () {
                searchApplicant(textEditingController.text);

/*
                          Navigator.pushNamed(
                            context,
                            MyRoutes.lognipage,
                          );
                          */
              },
              child: Text('খুঁজুন'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xffd97348),

                //Color(0xffeb6f1c),
              ),
            ),
          ),
        ])))));
  }
}
