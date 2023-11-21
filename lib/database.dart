import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';

class DatabaseMetgods {
  //String? downloadURL;

  Future addUserDetails(Map<String, dynamic> userinfoMap) async {
    return await FirebaseFirestore.instance
        .collection("Users")
        .doc()
        .set(userinfoMap);
  }

}
