


import 'package:flutter/material.dart';
import 'package:mcbp_practicum/database.dart';
//import 'package:file_picker/file_picker.dart';
import '../utils/routes.dart';

class Application extends StatefulWidget {
  const Application({super.key});

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  //PlatformFile? pickedFile;
  /*
  Future uploadFile() async {
    final path ='files/my-image.jpg';
    final file= File(pickedFile!.path! as List<Object>);
    final ref = FirebaseStorage.instance.ref().child(path);
    ref.putFile(file as File);
  }

   */
/*
  Future selectFile() async {
    final result = await FilePicker.platform.pickFiles();
    if (result == null) return;
    setState(() {
      pickedFile = result.files.first;
    });
  }

 */


  uploaduserinfo() async {
    Map<String, dynamic> uploaduserinfo = {
      "NID": nidController.text.trim(),
      "Date Of Birth": dobController.text.trim(),
      "Name": nameController.text,
      "Father Name": fathernameController.text,
      "Mother Name": mothernameController.text,
      "Spouse Name": spousenameController.text,
      "Applicant Nick Name": applicantnickController.text,
      "Birth Place": birthplaceController.text,
      "Religion": religionController.text,
      "Mobile No": mobilenoController.text,
      "Education Level": educationlevelController.text,
      "Blood Group": bloodgroupController.text,
      "Marital Info": maritalinfoController.text,
      "Divison": divisionController.text,
      "District": districtController.text,
      "Upalzila": upazilaController.text,
      "Union": unionController.text,
      "Ward No": wardnoController.text,
      "village": villageController.text,
      "Post Code": postcodeController.text,
      "Road/Block/Sector": roadController.text,
      "Marital Status": maritalstatusController.text,
      "Conception Term": conceptionController.text,
      "Conception Duration(Week)": conceptionController.text,
      "Payment Mode": paymentmodeController.text,
      "Account Name": accountnameController.text,
      "Account No": accountnoController.text,
    };
    await DatabaseMetgods().addUserDetails(uploaduserinfo);
  }

  TextEditingController nidController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController fathernameController = TextEditingController();
  TextEditingController mothernameController = TextEditingController();
  TextEditingController spousenameController = TextEditingController();
  TextEditingController applicantnickController = TextEditingController();
  TextEditingController birthplaceController = TextEditingController();
  TextEditingController religionController = TextEditingController();
  TextEditingController mobilenoController = TextEditingController();
  TextEditingController educationlevelController = TextEditingController();
  TextEditingController bloodgroupController = TextEditingController();
  TextEditingController maritalinfoController = TextEditingController();
  TextEditingController divisionController = TextEditingController();
  TextEditingController districtController = TextEditingController();
  TextEditingController upazilaController = TextEditingController();
  TextEditingController unionController = TextEditingController();
  TextEditingController wardnoController = TextEditingController();
  TextEditingController villageController = TextEditingController();
  TextEditingController postcodeController = TextEditingController();
  TextEditingController roadController = TextEditingController();
  TextEditingController maritalstatusController = TextEditingController();
  TextEditingController conceptionController = TextEditingController();
  TextEditingController conceptiondurationController = TextEditingController();
  TextEditingController paymentmodeController = TextEditingController();
  TextEditingController accountnameController = TextEditingController();
  TextEditingController accountnoController = TextEditingController();

  /*

  late String selectedOption;

  final List<String> options = ['মন্ত্রণালয়', 'পরিচালক দপ্তর', 'অন্যান্য', ];
  final List<String> options1 = ['মন্ত্রণালয়', 'পরিচালক দপ্তর', 'অন্যান্য', ];
  final List<String> options2 = ['মন্ত্রণালয়', 'পরিচালক দপ্তর', 'অন্যান্য', ];
  final List<String> options3 = ['মন্ত্রণালয়', 'পরিচালক দপ্তর', 'অন্যান্য', ];

   */

  //TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            "MCBP",
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 60,
                ),
                Image.asset(
                  "assists/images/govlogo.png",
                  scale: 20,
                ),

                Text(
                  "Applicant Management",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                Text(
                  "Personal Info",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
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
                    controller: nidController,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(12)),
                      hintText: "NID",
                      labelText: "NID",
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                SizedBox(
                  width: 300,
                  child: TextFormField(
                    controller: dobController,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(12)),
                      hintText: " Date Of Birth ",
                      labelText: "Date Of Birth ",
                    ),
                  ),
                ),
                // SizedBox(width: 16),

                SizedBox(
                  height: 20.0,
                ),
                SizedBox(
                  width: 300,
                  child: TextFormField(
                    controller: nameController,

                    obscureText: false,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(12)),
                      hintText: "Name",
                      labelText: "Name",
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                SizedBox(
                  width: 300,
                  child: TextFormField(
                    controller: fathernameController,
                    obscureText: false,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(12)),
                      hintText: "Father Name",
                      labelText: "Father Name",
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                SizedBox(
                  width: 300,
                  child: TextFormField(
                    controller: mothernameController,
                    obscureText: false,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(12)),
                      hintText: "Mother Name",
                      labelText: "Mother Name",
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                SizedBox(
                  width: 300,
                  child: TextFormField(
                    controller: spousenameController,
                    obscureText: false,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(12)),
                      hintText: "Spouse Name",
                      labelText: "Spouse Name",
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                SizedBox(
                  width: 300,
                  child: TextFormField(
                    controller: applicantnickController,
                    obscureText: false,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(12)),
                      hintText: "Applicant Nick Name",
                      labelText: "Applicant Nick Name",
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                SizedBox(
                  width: 300,
                  child: TextFormField(
                    controller: birthplaceController,
                    obscureText: false,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(12)),
                      hintText: "Birth Place",
                      labelText: "Birth Place",
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                SizedBox(
                  width: 300,
                  child: TextFormField(
                    controller: religionController,
                    obscureText: false,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(12)),
                      hintText: "Religion",
                      labelText: "Religion",
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                SizedBox(
                  width: 300,
                  child: TextFormField(
                    controller: mobilenoController,
                    obscureText: false,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(12)),
                      hintText: "Mobile No",
                      labelText: "Mobile No",
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                SizedBox(
                  width: 300,
                  child: TextFormField(
                    controller: educationlevelController,
                    obscureText: false,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(12)),
                      hintText: "Education Level",
                      labelText: "Education Level",
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                SizedBox(
                  width: 300,
                  child: TextFormField(
                    controller: bloodgroupController,
                    obscureText: false,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(12)),
                      hintText: "Blood Group",
                      labelText: "Blood Group",
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                SizedBox(
                  width: 300,
                  child: TextFormField(
                    controller: maritalinfoController,
                    obscureText: false,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(12)),
                      hintText: "Marital Info",
                      labelText: "Marital Info",
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  "Present Address",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                SizedBox(
                  width: 300,
                  child: TextFormField(
                    controller: divisionController,
                    obscureText: false,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(12)),
                      hintText: "Division",
                      labelText: "Division",
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                SizedBox(
                  width: 300,
                  child: TextFormField(
                    controller: districtController,
                    obscureText: false,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(12)),
                      hintText: "District",
                      labelText: "District",
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                SizedBox(
                  width: 300,
                  child: TextFormField(
                    controller: upazilaController,
                    obscureText: false,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(12)),
                      hintText: "Upazila",
                      labelText: "Upazila",
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                SizedBox(
                  width: 300,
                  child: TextFormField(
                    controller: unionController,
                    obscureText: false,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(12)),
                      hintText: "Union",
                      labelText: "Union",
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                SizedBox(
                  width: 300,
                  child: TextFormField(
                    controller: wardnoController,
                    obscureText: false,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(12)),
                      hintText: "Ward No",
                      labelText: "Ward No",
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                SizedBox(
                  width: 300,
                  child: TextFormField(
                    controller: villageController,
                    obscureText: false,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(12)),
                      hintText: "Village",
                      labelText: "Village",
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                SizedBox(
                  width: 300,
                  child: TextFormField(
                    controller: postcodeController,
                    obscureText: false,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(12)),
                      hintText: "Post Code",
                      labelText: "Post Code",
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                SizedBox(
                  width: 300,
                  child: TextFormField(
                    controller: roadController,
                    obscureText: false,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(12)),
                      hintText: "Road/Block/Sector",
                      labelText: "Road/Block/Sector",
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                SizedBox(
                  width: 300,
                  child: TextFormField(
                    controller: maritalstatusController,
                    obscureText: false,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(12)),
                      hintText: "Marital Status",
                      labelText: "Marital Status",
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Health Status",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                SizedBox(
                  width: 300,
                  child: TextFormField(
                    controller: conceptionController,
                    obscureText: false,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(12)),
                      hintText: "Conception Term",
                      labelText: "Conception Term",
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                SizedBox(
                  width: 300,
                  child: TextFormField(
                    controller: conceptiondurationController,
                    obscureText: false,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(12)),
                      hintText: "Conception Duration(Week) ",
                      labelText: "Conception Duration(Week) ",
                    ),
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                Text(
                  "Payment Details",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                SizedBox(
                  width: 300,
                  child: TextFormField(
                    controller: paymentmodeController,
                    obscureText: false,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(12)),
                      hintText: "Payment Mode",
                      labelText: "Payment Mode",
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                SizedBox(
                  width: 300,
                  child: TextFormField(
                    controller: accountnameController,
                    obscureText: false,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(12)),
                      hintText: "Account Name",
                      labelText: "Account Name",
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                SizedBox(
                  width: 300,
                  child: TextFormField(
                    controller: accountnoController,
                    obscureText: false,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(12)),
                      hintText: "Account No",
                      labelText: "Account No",
                    ),
                  ),
                ),
               // Text(pickedFile!.name),
                SizedBox(
                  height: 60.0,
                ),


                Container(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    onPressed: () {
                      uploaduserinfo();
                      showDialog(context: context, builder: (context) {
                        return AlertDialog(
                          title: Text(
                              "Your application has been submitted successfully"),
                          actions: [
                            TextButton(onPressed: () {
                              Navigator.pushNamed(
                                context,
                                MyRoutes.dashboard,
                              );
                            }, child: Text("ok"))
                          ],
                        );
                      });

                      /*


                  Navigator.pushNamed(
                    context,
                    MyRoutes.lognipage,
                  );

                   */
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xffd97348),

                      //Color(0xffeb6f1c),
                    ),
                    child: Text('Submit'),
                  ),
                ),

                SizedBox(
                  height: 100,
                ),
              ],
            )));
  }
}
