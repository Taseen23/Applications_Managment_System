import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mcbp_practicum/Controller/authentication.dart';
import 'package:mcbp_practicum/utils/routes.dart';

class SingupScreen extends StatefulWidget {
  @override
  State<SingupScreen> createState() => _SingupScreenState();
}

class _SingupScreenState extends State<SingupScreen> {

  final FirebaseAuthService _auth = FirebaseAuthService() ;
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmpasswordController = TextEditingController();
  @override

  void dispose(){
    super.dispose();
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }
  void signup() async{
    String username= _usernameController.text;
    String email= _emailController.text;
    String password= _passwordController.text;
    String confirmpass = _confirmpasswordController.text;
    
    User? user = await _auth.signUpWithEmailAndPassword(email, password);
    if (user!= null){
      print("User is successfully created");
      Navigator.pushNamed(context, MyRoutes.triggerpage);

    } else {
      print("Some error happened");
    }

  }

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
                        controller: _usernameController,
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
                        controller: _emailController,

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
                        controller: _passwordController,

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
                        controller: _confirmpasswordController,
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
                      child:

                      ElevatedButton(
                        onPressed: signup,
                        child:Text('Sign Up'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xffd97348),
                          //Color(0xffeb6f1c),

                        ),

                      ),
                    ),

                  ],
                )
            )
        )
      //  child: Center(),

    );
  }
}
