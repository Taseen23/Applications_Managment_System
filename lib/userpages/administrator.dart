import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/routes.dart';

class Admin extends StatefulWidget {
  const Admin({super.key});

  @override
  State<Admin> createState() => _AdminState();
}

class _AdminState extends State<Admin> {

  late String selectedOption;

  final List<String> options = ['মন্ত্রণালয়', 'পরিচালক দপ্তর', 'অন্যান্য', ];
  final List<String> options1 = ['মন্ত্রণালয়', 'পরিচালক দপ্তর', 'অন্যান্য', ];
  final List<String> options2 = ['মন্ত্রণালয়', 'পরিচালক দপ্তর', 'অন্যান্য', ];
  final List<String> options3 = ['মন্ত্রণালয়', 'পরিচালক দপ্তর', 'অন্যান্য', ];

  TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body:
      SingleChildScrollView(
          child: Container(
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
          child: Center(
              child:


              Column(
                  children: [
                    SizedBox(
                      height: 100.0,
                    ),

                    Text(
                      "ব্যবহারকারী তালিকা",
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
                              borderRadius: BorderRadius.circular(12)
                          ),
                          hintText: "ব্যবহারকারীর আইডি দিন",
                          labelText: "ব্যবহারকারীর আইডি",
                        ),
                      ),
                    ),
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
                              onChanged: (value) {
                                setState(() {
                                  selectedOption = value.toString();
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
                          suffixIcon: DropdownButton<String>(

                            // value: selectedOption,
                            onChanged: (value) {
                              setState(() {
                                selectedOption = value.toString();
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
                          hintText: "--বেছে নিন--",
                          labelText: "ব্যবহারকারীর রোল/(Role)",
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      alignment: Alignment.center,

                      child: ElevatedButton(
                        onPressed: () {

                          Navigator.pushNamed(
                            context,
                            MyRoutes.lognipage,
                          );
                        }  ,
                        child:Text('খুঁজুন'),


                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xffd97348),

                          //Color(0xffeb6f1c),

                        ),

                      ),
                    ),
                  ]
              )
          )
      )
      )



    );
  }
}
