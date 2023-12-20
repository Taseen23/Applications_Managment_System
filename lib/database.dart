import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';

class DatabaseMetgods {
  FirebaseAuth auth = FirebaseAuth.instance;
  DocumentSnapshot? myDocument;
  //String? downloadURL;

  Future addUserDetails(Map<String, dynamic> userinfoMap) async {
    return await FirebaseFirestore.instance
        .collection("Applicant")
        .doc()
        .set(userinfoMap);

  }
  Future addUserinfo(Map<String, dynamic> userinfoMap) async {
    return await FirebaseFirestore.instance
        .collection("Users")
        .doc()
        .set(userinfoMap);

  }


  Future<QuerySnapshot> getapplicantInfo(String name)async{


    return await FirebaseFirestore.instance.collection("Users").where("NID", isEqualTo: name).get();


  }


  getMyDocument(){
    FirebaseFirestore.instance.collection("Users").doc(auth.currentUser!.uid)
        .snapshots().listen((event){
          myDocument = event;
    });
  }




}
