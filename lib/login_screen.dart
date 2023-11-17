import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mcbp_practicum/utils/routes.dart';

import 'dashboard_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Future signin() async{
    await FirebaseAuth.instance.signInWithEmailAndPassword(email: _emailController.text.trim(), password: _passwordController.text.trim());
  }
  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }
  var email;
  var password;
  login() async {
    FirebaseAuth firebaseAuth = FirebaseAuth.instance;
    final User? user = (await firebaseAuth.signInWithEmailAndPassword(
        email: email, password: password))
        .user;
    if (user != null) {
      await //Future.delayed(Duration(seconds: 2));
      // ignore: use_build_context_synchronously
      Navigator.pushNamed(context, MyRoutes.dashboard, arguments: user);
    } else {
      //print("error");
    }
  }


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
        Text("Welcome",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            )),
        SizedBox(
          height: 20.0,
        ),
        Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
            child: Column(children: [
              TextFormField(
                onChanged: (value) {
                  setState(() {
                    email = value;
                  });
                },
                decoration: InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: "Enter Userid",
                  labelText: "Userid",
                ),
                  validator: (value) {
                    if (value == null) {
                      return 'Please Enter Correct Email';
                    }
                    return null;
                  }


              ),
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                  onChanged: (value) {
                    setState(() {
                      password = value;
                    });
                  },
                decoration: InputDecoration(
                  icon: Icon(Icons.password),
                  hintText: "Enter Password",
                  labelText: "Password",
                ),
                  validator: (value) {
                    if (value == null) {
                      return 'Please Enter Correct Passwoord';
                    }
                    return null;
                  }
              ),
              SizedBox(
                height: 20.0,
              ),




              ElevatedButton(
                //onPressed: DashboardScreen(),
                onPressed: login,
                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  width: 80,
                  height: 30,
                  alignment: Alignment.center,
                  child: Text("login",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      )),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.rectangle,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
        Container(

            child: GestureDetector(
              onTap: () async {
                await Future.delayed(Duration(seconds: 0));
                Navigator.pushNamed(context, MyRoutes.singup);
              },
              child: const Text.rich(
                TextSpan(
                  text: "Don't have an Account?",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ), // default text style
                  children: <TextSpan>[
                    TextSpan(
                      text: " Signup",
                      style: TextStyle(
                        color: Colors.lightBlue,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              )



              /*


              SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                //onPressed: DashboardScreen(),
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    MyRoutes.singup,
                  );
                },

                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  width: 80,
                  height: 30,
                  alignment: Alignment.center,
                  child: Text("Singup",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      )),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.rectangle,
                  ),
                ),
              ),

               */
            )
        )
            ],))
      ]),
    ));
  }
}
