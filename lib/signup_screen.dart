import 'package:flutter/material.dart';

class SingupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body:
        Container(
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
                child: Column(
                  children: [
                  SizedBox(
                  height: 200.0,
                ),
                Text(
                  "Create a new account",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                )
                  ],
                )
            )
        )
      //  child: Center(),

    );
  }
}
