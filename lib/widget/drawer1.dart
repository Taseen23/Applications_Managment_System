//import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Controller/database.dart';
import '../utils/routes.dart';
//import 'package:test_project/utils/routes.dart';

class MyDrawer_user extends StatefulWidget {

  const MyDrawer_user({super.key});

  @override
  State<MyDrawer_user> createState() => _MyDrawer_userState();
}

class _MyDrawer_userState extends State<MyDrawer_user> {
  /*
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  //TextEditingController _passwordController = TextEditingController();
 // TextEditingController _confirmpasswordController = TextEditingController();
  DatabaseMetgods? dataController;
  initState(){
    super.initState();
   dataController = Get.find<DatabaseMetgods>();
    _usernameController.text =dataController!.myDocument!.get("Name");
    _emailController.text =dataController!.myDocument!.get("Mobile No");



  }

   */

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                  accountEmail: Text("taseenalam13@gmail.com",),

                  // accountEmail: Text(user.email.toString()),
                  accountName: Text("Taseen Alam Dehan",),
                  currentAccountPicture: CircleAvatar(

                    backgroundImage:
                    AssetImage('assists/images/tasseen.jpg'),
                    // Image.asset("assists/images/tasseen.jpg"),

                    /* NetworkImage(
                        'https://www.facebook.com/photo/?fbid=3413161075616149&set=a.1607379139527694'
                    ),

                   */

                  ) //   currentAccountPicture: Image.asset("assists/images/1664440310932.jpeg")
              )),
          ListTile(
            leading: Icon(
              CupertinoIcons.slider_horizontal_below_rectangle,
              color: Colors.black87,
            ),
            title:
            InkWell(
              onTap: () async {
                await Future.delayed(Duration(seconds: 0));
                Navigator.pushNamed(context, MyRoutes.dashboarduser);
              },
              child: Text(
                "Dashboard",
                //"Dashboard",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.black87,
                ),
              ),
            ),
          ),

          ListTile(
            leading: Icon(
              CupertinoIcons.doc_person,
              color: Colors.black87,
            ),
            title: InkWell(
              onTap: () async {
                await Future.delayed(const Duration(seconds: 0));
                Navigator.pushNamed(context, MyRoutes.applicationuser);
              },


              child:Text(
                // "আবেদন",
                "Application",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.black87,
                ),
              ),
            ),
          ),

          ListTile(
            leading: Icon(
              CupertinoIcons.rectangle_stack,
              color: Colors.black87,
            ),
            title: InkWell(
              onTap: () async {
                await Future.delayed(Duration(seconds: 0));
                Navigator.pushNamed(context, MyRoutes.benifiries_user);
              },
              child: Text(
                //"রিপোর্ট",
                "Beneficiaries",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.black87,
                ),
              ),
            ),
          ),

          ListTile(
            leading: Icon(
              CupertinoIcons.escape,
              color: Colors.black87,
            ),
            title: InkWell(
              onTap: () async {
                FirebaseAuth.instance.signOut();
                await Future.delayed(Duration(seconds: 0));
                Navigator.pushNamed(context, MyRoutes.triggerpage);
              },
              child: Text(
                //"লগআউট",
                "Log Out",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.black87,
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
// final user = FirebaseAuth.instance.currentUser!;
