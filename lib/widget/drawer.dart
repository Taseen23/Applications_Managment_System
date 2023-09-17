//import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/routes.dart';
//import 'package:test_project/utils/routes.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children:  [
          DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                  accountEmail: Text("20103264@iubat.edu"),

                  // accountEmail: Text(user.email.toString()),
                  accountName: Text("Taseen Alam Dehan"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://www.facebook.com/messenger_media/?attachment_id=1330498180878882&message_id=mid.%24cAAAAAefgzh-PYvz2_GJMbeppyLJN&thread_id=100009361145553'),
                  ) //   currentAccountPicture: Image.asset("assists/images/1664440310932.jpeg")
                  )),
          ListTile(
            leading: Icon(
              CupertinoIcons.slider_horizontal_below_rectangle,
              color: Colors.black87,
            ),
            title: Text(
              "ড্যাশবোর্ড",
              //"Dashboard",
              textScaleFactor: 1.2,
              style: TextStyle(
                color: Colors.black87,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.profile_circled,
              color: Colors.black87,
            ),
            title: Text(
              "অ্যাডমিনিস্ট্রেটর",
              //"Administration",
              textScaleFactor: 1.2,
              style: TextStyle(
                color: Colors.black87,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.doc_person,
              color: Colors.black87,
            ),
            title: Text(
              "আবেদন",
              //"Applications",
              textScaleFactor: 1.2,
              style: TextStyle(
                color: Colors.black87,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.arrow_right_arrow_left_square,
              color: Colors.black87,
            ),
            title: Text(
              "চূড়ান্ত নির্বাচন",
              //  "Final Selection",
              textScaleFactor: 1.2,
              style: TextStyle(
                color: Colors.black87,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.rectangle_stack,
              color: Colors.black87,
            ),
            title: Text(
              "রিপোর্ট",
              //"Final Acceptation",
              textScaleFactor: 1.2,
              style: TextStyle(
                color: Colors.black87,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.escape,
              color: Colors.black87,
            ),
            title:  InkWell(
    onTap: () async {
    await Future.delayed(Duration(seconds: 0));
    Navigator.pushNamed(context, MyRoutes.lognipage);
  },


           child: Text (
              "লগআউট",
              //"Final Acceptation",
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
