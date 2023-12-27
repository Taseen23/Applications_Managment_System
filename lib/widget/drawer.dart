//import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../database.dart';
import '../utils/routes.dart';
//import 'package:test_project/utils/routes.dart';

class MyDrawer extends StatefulWidget {

  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
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
                Navigator.pushNamed(context, MyRoutes.dashboard);
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
              CupertinoIcons.profile_circled,
              color: Colors.black87,
            ),
            title: InkWell(
              onTap: () async {
                await Future.delayed(Duration(seconds: 0));
                Navigator.pushNamed(context, MyRoutes.administrator);
              },

            child: Text(
              //"অ্যাডমিনিস্ট্রেটর",
              "Administration",
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
                Navigator.pushNamed(context, MyRoutes.application);
              },


            child:Text(
             // "আবেদন",
              "Applications",
              textScaleFactor: 1.2,
              style: TextStyle(
                color: Colors.black87,
              ),
            ),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.arrow_right_arrow_left_square,
              color: Colors.black87,
            ),
            title: InkWell(
              onTap: () async {
                await Future.delayed(Duration(seconds: 0));
                Navigator.pushNamed(context, MyRoutes.final_selection);
              },
            child:Text(
              //"চূড়ান্ত নির্বাচন",
               "Final Selection",
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
                Navigator.pushNamed(context, MyRoutes.report);
              },
            child: Text(
              //"রিপোর্ট",
              "Final Acceptation",
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
                Navigator.pushNamed(context, MyRoutes.lognipage);
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
