import 'package:flutter/material.dart';

import '../utils/routes.dart';

class Admin extends StatefulWidget {
  const Admin({super.key});

  @override
  State<Admin> createState() => _AdminState();
}

class _AdminState extends State<Admin> {

  late String selectedOption;

  final List<String> options = ['আমি', 'ভাত', 'খাই', ];
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
            hintText: "Enter Username",
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
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(12)
            ),
            hintText: "Enter Username",
            labelText: "কর্মসূচি",
          ),
        ),
      ),
        SizedBox(width: 16),
        DropdownButton<String>(
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
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(12)
            ),
            hintText: "Enter New Password",
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
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(12)
            ),
            hintText: "Enter Confirm Password",
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
    ]
    )
    )
      )
    );
  }
}
