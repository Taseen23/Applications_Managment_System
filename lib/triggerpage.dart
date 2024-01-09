import 'package:flutter/material.dart';

import 'utils/routes.dart';

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
              SizedBox(
                height: 80,
              ),
              Container(
                child:
                Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                  ElevatedButton(
                    onPressed: (){
                      Navigator.pushNamed(
                        context,
                        MyRoutes.lognipage,
                      );
                    },
                    child: Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 20,
                          horizontal: 40,
                        ),
                        margin: EdgeInsets.symmetric(
                          vertical: 0,
                          horizontal: 0,
                        ),
                        // color: Colors.teal[100],
                        child: const Text("Admin",
                            style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                        )),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(width: 1, color: Colors.white70),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 5,
                                spreadRadius: 10,
                              )
                            ])),
                  ),
                  ElevatedButton(

                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        MyRoutes.loginuserpage,
                      );

                    },
                    child: Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 20,
                          horizontal: 40,
                        ),
                        margin: EdgeInsets.symmetric(
                          vertical: 0,
                          horizontal: 0,
                        ),
                        // color: Colors.teal[100],
                        child: const Text("User",
                            style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                        )),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(width: 1, color: Colors.white70),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 5,
                                spreadRadius: 10,
                              )
                            ])),
                  ),
                ]),
              ),
              /*
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


               */


            ]
            )
        )
    );
  }
}