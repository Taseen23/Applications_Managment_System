import 'package:flutter/material.dart';

import '../utils/routes.dart';

class Admin extends StatelessWidget {
  const Admin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:


        Container(
            child: Center(
                child:


                Column(
                    children: [
                      SizedBox(
                        height: 100.0,
                      ),

                      Text(
                        "Create a new account",
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
                            hintText: "Enter Username",
                            labelText: "First Name",
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
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(12)
                            ),
                            hintText: "Enter Username",
                            labelText: "Last Name",
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      SizedBox(
                        width: 300,
                        child: TextFormField(
                          //  controller: _emailController,

                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(12)
                            ),
                            hintText: "User Email Address",
                            labelText: "Email Address",
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
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(12)
                            ),
                            hintText: "Enter New Password",
                            labelText: "Create Password",
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
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(12)
                            ),
                            hintText: "Enter Confirm Password",
                            labelText: "Confirm Password",
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      SizedBox(
                        height: 40,



                      ),
                    ]
                )
            )
        )
    );
  }
}
