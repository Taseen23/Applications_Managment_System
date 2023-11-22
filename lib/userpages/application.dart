import 'package:flutter/material.dart';
import 'package:mcbp_practicum/database.dart';

import '../utils/routes.dart';

class Application extends StatefulWidget {


  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {

  uploaduserinfo() async{
    Map<String, dynamic> uploaduserinfo={

      "NID" : nidController.text,
      "Date Of Birth": dobController.text,
      "Name" : nameController.text,
      "Father Name" : fathernameController.text,
      "Mother Name" : mothernameController.text,
      "Spouse Name": spousenameController.text,
      "Applicant Nick Name": applicantnickController.text,
      "Birth Place" : birthplaceController.text,
      "Religion" : religionController.text,
      "Mobile No" : mobilenoController.text,
      "Education Level": educationlevelController.text,
      "Blood Group" : bloodgroupController.text,
      "Marital Info" : maritalinfoController.text,
      "Divison" : divisionController.text,
      "District" : districtController.text,
      "Upalzila" : upazilaController.text,
      "Union" : unionController.text,
      "Ward No" : wardnoController.text,
      "village" : villageController.text,
      "Post Code" : postcodeController.text,
      "Road/Block/Sector" : roadController.text,
      "Marital Status" : maritalstatusController.text,
      "Conception Term" : conceptionController.text,
      "Conception Duration(Week)": conceptionController.text,
      "Payment Mode": paymentmodeController.text,
      "Account Name" : accountnameController.text,
      "Account No" : accountnoController.text,



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
        backgroundColor: Colors.white30,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 100.0,
            ),
            SizedBox(
              height: 100.0,
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
                // controller: _firstnameController,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(12)
                  ),
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
                //  controller: _lastnameController,
                decoration: InputDecoration(




                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(12)
                  ),
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
                //   controller: _passwordController,

                obscureText: true,
                decoration: InputDecoration(
    /*suffixIcon: DropdownButton<String>(

                    // value: selectedOption,
                    onChanged: (value) {
                      setState(() {
                        selectedOption = value.toString();
                      });
                    },
                    items: options.map((option) {
                      return DropdownMenuItem<String>(
                        value: option,
                        child: Text(option),
                      );
                    }).toList(),
                  ),

     */
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(12)
                  ),
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
                //  controller: _confirmpasswordController,
                obscureText: true,
                decoration: InputDecoration(
    /*  suffixIcon: DropdownButton<String>(

                    // value: selectedOption,
                    onChanged: (value) {
                      setState(() {
                        selectedOption = value.toString();
                      });
                    },
                    items: options.map((option) {
                      return DropdownMenuItem<String>(
                        value: option,
                        child: Text(option),
                      );
                    }).toList(),
                  ),

     */
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(12)
                  ),
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
                //  controller: _confirmpasswordController,
                obscureText: true,
                decoration: InputDecoration(

                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(12)
                  ),
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
                //  controller: _confirmpasswordController,
                obscureText: true,
                decoration: InputDecoration(

                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(12)
                  ),
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
                //  controller: _confirmpasswordController,
                obscureText: true,
                decoration: InputDecoration(

                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(12)
                  ),
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
                //  controller: _confirmpasswordController,
                obscureText: true,
                decoration: InputDecoration(
                  /*
                    suffixIcon: DropdownButton<String>(

                    // value: selectedOption,
                    onChanged: (value) {
                      setState(() {
                        selectedOption = value.toString();
                      });
                    },
                    items: options.map((option) {
                      return DropdownMenuItem<String>(
                        value: option,
                        child: Text(option),
                      );
                    }).toList(),
                  ),

                   */


                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(12)
                  ),
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
                //  controller: _confirmpasswordController,
                obscureText: true,
                decoration: InputDecoration(
                  /*
                    suffixIcon: DropdownButton<String>(

                    // value: selectedOption,
                    onChanged: (value) {
                      setState(() {
                        selectedOption  = value.toString();
                      });
                    },
                    items: options.map((option) {
                      return DropdownMenuItem<String>(
                        value: option,
                        child: Text(option),
                      );
                    }).toList(),
                  ),

                   */


                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(12)
                  ),
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
                //  controller: _confirmpasswordController,
                obscureText: true,
                decoration: InputDecoration(

                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(12)
                  ),
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
                //  controller: _confirmpasswordController,
                obscureText: true,
                decoration: InputDecoration(
                  /*
                    suffixIcon: DropdownButton<String>(

                    // value: selectedOption,
                    onChanged: (value) {
                      setState(() {
                        selectedOption = value.toString();
                      });
                    },
                    items: options.map((option) {
                      return DropdownMenuItem<String>(
                        value: option,
                        child: Text(option),
                      );
                    }).toList(),
                  ),

                   */


                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(12)
                  ),
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
                //  controller: _confirmpasswordController,
                obscureText: true,
                decoration: InputDecoration(
                  /*
                    suffixIcon: DropdownButton<String>(

                    // value: selectedOption,
                    onChanged: (value) {
                      setState(() {
                        selectedOption = value.toString();
                      });
                    },
                    items: options.map((option) {
                      return DropdownMenuItem<String>(
                        value: option,
                        child: Text(option),
                      );
                    }).toList(),
                  ),

                   */


                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(12)
                  ),
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
                //  controller: _confirmpasswordController,
                obscureText: true,
                decoration: InputDecoration(
                  /*
                    suffixIcon: DropdownButton<String>(

                    // value: selectedOption,
                    onChanged: (value) {
                      setState(() {
                        selectedOption = value.toString();
                      });
                    },
                    items: options.map((option) {
                      return DropdownMenuItem<String>(
                        value: option,
                        child: Text(option),
                      );
                    }).toList(),
                  ),

                   */


                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(12)
                  ),
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
              width: 300,
              child: TextFormField(
                //  controller: _confirmpasswordController,
                obscureText: true,
                decoration: InputDecoration(
                  /*
                  suffixIcon: DropdownButton<String>(

                    // value: selectedOption,
                    onChanged: (value) {
                      setState(() {
                        selectedOption = value.toString();
                      });
                    },
                    items: options.map((option) {
                      return DropdownMenuItem<String>(
                        value: option,
                        child: Text(option),
                      );
                    }).toList(),
                  ),

                   */


                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(12)
                  ),
                  hintText: "Division",
                  labelText: "Division",
                ),
              ),
            ),
            SizedBox(
              width: 300,
              child: TextFormField(
                //  controller: _confirmpasswordController,
                obscureText: true,
                decoration: InputDecoration(
                  /*
                  suffixIcon: DropdownButton<String>(

                    // value: selectedOption,
                    onChanged: (value) {
                      setState(() {
                        selectedOption = value.toString();
                      });
                    },
                    items: options.map((option) {
                      return DropdownMenuItem<String>(
                        value: option,
                        child: Text(option),
                      );
                    }).toList(),
                  ),

                   */


                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(12)
                  ),
                  hintText: "District",
                  labelText: "District",
                ),
              ),
            ),
            SizedBox(
              width: 300,
              child: TextFormField(
                //  controller: _confirmpasswordController,
                obscureText: true,
                decoration: InputDecoration(
                  /*
                  suffixIcon: DropdownButton<String>(

                    // value: selectedOption,
                    onChanged: (value) {
                      setState(() {
                        selectedOption = value.toString();
                      });
                    },
                    items: options.map((option) {
                      return DropdownMenuItem<String>(
                        value: option,
                        child: Text(option),
                      );
                    }).toList(),
                  ),

                   */


                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(12)
                  ),
                  hintText: "Upazila",
                  labelText: "Upazila",
                ),
              ),
            ),SizedBox(
              width: 300,
              child: TextFormField(
                //  controller: _confirmpasswordController,
                obscureText: true,
                decoration: InputDecoration(
                  /*
                  suffixIcon: DropdownButton<String>(

                    // value: selectedOption,
                    onChanged: (value) {
                      setState(() {
                        selectedOption = value.toString();
                      });
                    },
                    items: options.map((option) {
                      return DropdownMenuItem<String>(
                        value: option,
                        child: Text(option),
                      );
                    }).toList(),
                  ),

                   */


                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(12)
                  ),
                  hintText: "Union",
                  labelText: "Union",
                ),
              ),
            ),
            SizedBox(
              width: 300,
              child: TextFormField(
                //  controller: _confirmpasswordController,
                obscureText: true,
                decoration: InputDecoration(
                  /*
                  suffixIcon: DropdownButton<String>(

                    // value: selectedOption,
                    onChanged: (value) {
                      setState(() {
                        selectedOption = value.toString();
                      });
                    },
                    items: options.map((option) {
                      return DropdownMenuItem<String>(
                        value: option,
                        child: Text(option),
                      );
                    }).toList(),
                  ),

                   */


                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(12)
                  ),
                  hintText: "Ward No",
                  labelText: "Ward No",
                ),
              ),
            ),
            SizedBox(
              width: 300,
              child: TextFormField(
                //  controller: _confirmpasswordController,
                obscureText: true,
                decoration: InputDecoration(
                  /*
                  suffixIcon: DropdownButton<String>(

                    // value: selectedOption,
                    onChanged: (value) {
                      setState(() {
                        selectedOption = value.toString();
                      });
                    },
                    items: options.map((option) {
                      return DropdownMenuItem<String>(
                        value: option,
                        child: Text(option),
                      );
                    }).toList(),
                  ),

                   */


                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(12)
                  ),
                  hintText: "Village",
                  labelText: "Village",
                ),
              ),
            ),
            SizedBox(
              width: 300,
              child: TextFormField(
                //  controller: _confirmpasswordController,
                obscureText: true,
                decoration: InputDecoration(
                  /*
                  suffixIcon: DropdownButton<String>(

                    // value: selectedOption,
                    onChanged: (value) {
                      setState(() {
                        selectedOption = value.toString();
                      });
                    },
                    items: options.map((option) {
                      return DropdownMenuItem<String>(
                        value: option,
                        child: Text(option),
                      );
                    }).toList(),
                  ),

                   */


                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(12)
                  ),
                  hintText: "Post Code",
                  labelText: "Post Code",
                ),
              ),
            ),
            SizedBox(
              width: 300,
              child: TextFormField(
                //  controller: _confirmpasswordController,
                obscureText: true,
                decoration: InputDecoration(
                  /*
                  suffixIcon: DropdownButton<String>(

                    // value: selectedOption,
                    onChanged: (value) {
                      setState(() {
                        selectedOption = value.toString();
                      });
                    },
                    items: options.map((option) {
                      return DropdownMenuItem<String>(
                        value: option,
                        child: Text(option),
                      );
                    }).toList(),
                  ),

                   */


                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(12)
                  ),
                  hintText: "Road/Block/Sector",
                  labelText: "Road/Block/Sector",
                ),
              ),
            ),
            SizedBox(
              width: 300,
              child: TextFormField(
                //  controller: _confirmpasswordController,
                obscureText: true,
                decoration: InputDecoration(
                  /*
                  suffixIcon: DropdownButton<String>(

                    // value: selectedOption,
                    onChanged: (value) {
                      setState(() {
                        selectedOption = value.toString();
                      });
                    },
                    items: options.map((option) {
                      return DropdownMenuItem<String>(
                        value: option,
                        child: Text(option),
                      );
                    }).toList(),
                  ),

                   */


                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(12)
                  ),
                  hintText: "Marital Status",
                  labelText: "Marital Status",
                ),
              ),
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
              width: 300,
              child: TextFormField(
                //  controller: _confirmpasswordController,
                obscureText: true,
                decoration: InputDecoration(
                  /*
                  suffixIcon: DropdownButton<String>(

                    // value: selectedOption,
                    onChanged: (value) {
                      setState(() {
                        selectedOption = value.toString();
                      });
                    },
                    items: options.map((option) {
                      return DropdownMenuItem<String>(
                        value: option,
                        child: Text(option),
                      );
                    }).toList(),
                  ),

                   */


                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(12)
                  ),
                  hintText: "Conception Term",
                  labelText: "Conception Term",
                ),
              ),
            ),
            SizedBox(
              width: 300,
              child: TextFormField(
                //  controller: _confirmpasswordController,
                obscureText: true,
                decoration: InputDecoration(
                  /*
                  suffixIcon: DropdownButton<String>(

                    // value: selectedOption,
                    onChanged: (value) {
                      setState(() {
                        selectedOption = value.toString();
                      });
                    },
                    items: options.map((option) {
                      return DropdownMenuItem<String>(
                        value: option,
                        child: Text(option),
                      );
                    }).toList(),
                  ),

                   */


                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(12)
                  ),
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
              width: 300,
              child: TextFormField(
                //  controller: _confirmpasswordController,
                obscureText: true,
                decoration: InputDecoration(
                  /*
                  suffixIcon: DropdownButton<String>(

                    // value: selectedOption,
                    onChanged: (value) {
                      setState(() {
                        selectedOption = value.toString();
                      });
                    },
                    items: options.map((option) {
                      return DropdownMenuItem<String>(
                        value: option,
                        child: Text(option),
                      );
                    }).toList(),
                  ),

                   */


                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(12)
                  ),
                  hintText: "Payment Mode",
                  labelText: "Payment Mode",
                ),
              ),
            ),
            SizedBox(
              width: 300,
              child: TextFormField(
                //  controller: _confirmpasswordController,
                obscureText: true,
                decoration: InputDecoration(
                  /*
                  suffixIcon: DropdownButton<String>(

                    // value: selectedOption,
                    onChanged: (value) {
                      setState(() {
                        selectedOption = value.toString();
                      });
                    },
                    items: options.map((option) {
                      return DropdownMenuItem<String>(
                        value: option,
                        child: Text(option),
                      );
                    }).toList(),
                  ),

                   */


                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(12)
                  ),
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
                //  controller: _confirmpasswordController,
                obscureText: true,
                decoration: InputDecoration(
                  /*
                  suffixIcon: DropdownButton<String>(

                    // value: selectedOption,
                    onChanged: (value) {
                      setState(() {
                        selectedOption = value.toString();
                      });
                    },
                    items: options.map((option) {
                      return DropdownMenuItem<String>(
                        value: option,
                        child: Text(option),
                      );
                    }).toList(),
                  ),

                   */


                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(12)
                  ),
                  hintText: "Account No",
                  labelText: "Account No",
                ),
              ),
            ),
            SizedBox(
              height: 60.0,
            ),

            Container(
              alignment: Alignment.center,

              child: ElevatedButton(
                onPressed: () {
                  uploaduserinfo();

                  Navigator.pushNamed(
                    context,
                    MyRoutes.lognipage,
                  );
                }  ,
                child:Text('Submit'),


                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xffd97348),

                  //Color(0xffeb6f1c),

                ),

              ),
            ),

            SizedBox(
              height: 100,
            ),

          ],

        )
      )

    );
  }
}