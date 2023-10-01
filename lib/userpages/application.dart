import 'package:flutter/material.dart';

import '../utils/routes.dart';

class Application extends StatefulWidget {


  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {

  late String selectedOption;

  final List<String> options = ['মন্ত্রণালয়', 'পরিচালক দপ্তর', 'অন্যান্য', ];
  final List<String> options1 = ['মন্ত্রণালয়', 'পরিচালক দপ্তর', 'অন্যান্য', ];
  final List<String> options2 = ['মন্ত্রণালয়', 'পরিচালক দপ্তর', 'অন্যান্য', ];
  final List<String> options3 = ['মন্ত্রণালয়', 'পরিচালক দপ্তর', 'অন্যান্য', ];


  TextEditingController textEditingController = TextEditingController();
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
              "আবেদনকারী ব্যবস্থাপনা",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            Text(
              "ব্যক্তিগত তথ্য",
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
                  hintText: "জাতীয় পরিচয় পত্র নং দিন",
                  labelText: "জাতীয় পরিচয় পত্র নং",
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
                  hintText: " জন্ম তারিখ ",
                  labelText: "জন্ম তারিখ",
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

                //  controller: _emailController,

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
                  hintText: "নাম (বাংলা)",
                  labelText: "নাম (বাংলা)",
                ),
              ),
            ),
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
                  hintText: "সনাম (ইংরেজি)",
                  labelText: "সনাম (ইংরেজি)",
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
                  hintText: "িতার নাম",
                  labelText: "পিতার নাম",
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
                  hintText: "মাতার নাম",
                  labelText: "মাতার নাম",
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
                  hintText: "পস্বামীর নাম",
                  labelText: "পস্বামীর নাম",
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
                  hintText: "যে নামে পরিচিত",
                  labelText: "যে নামে পরিচিত",
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


                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(12)
                  ),
                  hintText: "--বেছে নিন--",
                  labelText: "জন্মস্থান",
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


                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(12)
                  ),
                  hintText: "--বেছে নিন--",
                  labelText: "ধর্ম",
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
                  hintText: "--বেছে নিন--",
                  labelText: "মোবাইল নং",
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


                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(12)
                  ),
                  hintText: "--বেছে নিন--",
                  labelText: "শিক্ষাগত যোগ্যতা",
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


                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(12)
                  ),
                  hintText: "--বেছে নিন--",
                  labelText: "রক্তের গ্রুপ",
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


                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(12)
                  ),
                  hintText: "--বেছে নিন--",
                  labelText: "বৈবাহিক তথ্য",
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
              "বর্তমান ঠিকানা",
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


                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(12)
                  ),
                  hintText: "--বেছে নিন--",
                  labelText: "বিভাগ",
                ),
              ),
            ),
            SizedBox(
              width: 300,
              child: TextFormField(
                //  controller: _confirmpasswordController,
                obscureText: true,
                decoration: InputDecoration(
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


                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(12)
                  ),
                  hintText: "--বেছে নিন--",
                  labelText: "জেলা",
                ),
              ),
            ),
            SizedBox(
              width: 300,
              child: TextFormField(
                //  controller: _confirmpasswordController,
                obscureText: true,
                decoration: InputDecoration(
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


                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(12)
                  ),
                  hintText: "--বেছে নিন--",
                  labelText: "উপজেলা",
                ),
              ),
            ),SizedBox(
              width: 300,
              child: TextFormField(
                //  controller: _confirmpasswordController,
                obscureText: true,
                decoration: InputDecoration(
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


                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(12)
                  ),
                  hintText: "--বেছে নিন--",
                  labelText: "উইনিয়ন",
                ),
              ),
            ),
            SizedBox(
              width: 300,
              child: TextFormField(
                //  controller: _confirmpasswordController,
                obscureText: true,
                decoration: InputDecoration(
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


                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(12)
                  ),
                  hintText: "--বেছে নিন--",
                  labelText: "ওয়ার্ড নং",
                ),
              ),
            ),
            SizedBox(
              width: 300,
              child: TextFormField(
                //  controller: _confirmpasswordController,
                obscureText: true,
                decoration: InputDecoration(
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


                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(12)
                  ),
                  hintText: "--বেছে নিন--",
                  labelText: "গ্রাম",
                ),
              ),
            ),
            SizedBox(
              width: 300,
              child: TextFormField(
                //  controller: _confirmpasswordController,
                obscureText: true,
                decoration: InputDecoration(
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


                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(12)
                  ),
                  hintText: "--বেছে নিন--",
                  labelText: "পোস্ট কোড",
                ),
              ),
            ),
            SizedBox(
              width: 300,
              child: TextFormField(
                //  controller: _confirmpasswordController,
                obscureText: true,
                decoration: InputDecoration(
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


                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(12)
                  ),
                  hintText: "--বেছে নিন--",
                  labelText: "রাস্তা/ব্লক/সেক্টর",
                ),
              ),
            ),
            SizedBox(
              width: 300,
              child: TextFormField(
                //  controller: _confirmpasswordController,
                obscureText: true,
                decoration: InputDecoration(
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


                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(12)
                  ),
                  hintText: "--বেছে নিন--",
                  labelText: "বৈবাহিক তথ্য",
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "স্বাস্থ্যগত তথ্য",
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


                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(12)
                  ),
                  hintText: "--বেছে নিন--",
                  labelText: "গর্ভধারণ ক্রম",
                ),
              ),
            ),
            SizedBox(
              width: 300,
              child: TextFormField(
                //  controller: _confirmpasswordController,
                obscureText: true,
                decoration: InputDecoration(
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


                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(12)
                  ),
                  hintText: "--বেছে নিন--",
                  labelText: "গর্ভধারণ সময়কাল(সপ্তাহ)",
                ),
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Text(
              "পেমেন্টের তথ্য",
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


                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(12)
                  ),
                  hintText: "--বেছে নিন--",
                  labelText: "পেমেন্টের ধরন",
                ),
              ),
            ),
            SizedBox(
              width: 300,
              child: TextFormField(
                //  controller: _confirmpasswordController,
                obscureText: true,
                decoration: InputDecoration(
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


                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(12)
                  ),
                  hintText: "--বেছে নিন--",
                  labelText: "হিসাবের নাম",
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


                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(12)
                  ),
                  hintText: "--বেছে নিন--",
                  labelText: "হিসাব নং",
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

                  Navigator.pushNamed(
                    context,
                    MyRoutes.lognipage,
                  );
                }  ,
                child:Text('সংরক্ষন করুন'),


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