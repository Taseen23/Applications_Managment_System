import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {
  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage>{
  @override
  Widget build(BuildContext context) {
    return Material(
     child: SingleChildScrollView(
      //body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 18.0,
            ),
            Image.asset("assists/images/logo.png", fit: BoxFit.fill),
            SizedBox(
              height: 20.0,
            ),
            Text("Welcome",
              style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            )
            ),
            SizedBox(
              height: 20.0,
            ),
         Padding(
             padding:
             const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
    child: Column(
    children: [


          ]
        )
      )
    ]


    ),
    )
    );



  }
}
