import 'package:flutter/material.dart';

import '../utils/routes.dart';

class triggerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: SingleChildScrollView(
          //body: Center(
            child: Column(children: [
              SizedBox(
                height: 18.0,
              ),
              Image.asset("assists/images/logo.png", fit: BoxFit.fill),
              SizedBox(
                height: 20.0,
              ),
              Text("Who You Are?",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  )),
              Container(
                alignment: Alignment.centerLeft,
                child: ElevatedButton(onPressed: () {
                  Navigator.pushNamed(
                    context,
                    MyRoutes.lognipage,
                  );
                },
                    child: AnimatedContainer(
                    duration: Duration(seconds: 1),
          width: 80,
          height: 30,
          alignment: Alignment.center,
          child: Text("Admin",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                )),
          decoration: BoxDecoration(
            color: Colors.blue,
            shape: BoxShape.rectangle,
          ),
        ),),
              ),
              Container(
                alignment: Alignment.centerRight,
                child: ElevatedButton(onPressed: () {
                  Navigator.pushNamed(
                    context,
                    MyRoutes.lognipage,
                  );
                },
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    width: 80,
                    height: 30,
                    alignment: Alignment.center,
                    child: Text("User",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        )),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.rectangle,
                    ),
                  ),),
              )

            ]
            )
        )
    );
  }
}