import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';

class DatabaseMetgods {
  String selectedOption = 'Accept';
  FirebaseAuth auth = FirebaseAuth.instance;
  DocumentSnapshot? myDocument;
  //String? downloadURL;

  Future addApplicantDetails(Map<String, dynamic> userinfoMap) async {
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
  void _storeDataToBeneficiaryTable(Map<String, dynamic> applicantData) {
    // Store the selected applicant data in the "Beneficiary" table
    FirebaseFirestore.instance.collection('Beneficiary').add({
      'NID': applicantData['NID'],
      'Name': applicantData['Name'],
      'AcceptStatus': selectedOption,
    }).then((value) {
      // Perform any additional actions after storing data if needed
      print('Data stored successfully in Beneficiary table');
    }).catchError((error) {
      print('Error storing data in Beneficiary table: $error');
    });
  }
}





