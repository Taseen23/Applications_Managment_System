import 'package:flutter/material.dart';

class FinalSelection extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "MCBP",
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          child: Container(
            /*
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

             */
              child: Center(
                  child:


                  Column(
                      children: [
                        SizedBox(
                          height: 100.0,
                        ),

                        Text(
                          "Applicant List",
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
                          height: 30.0,
                        ),
                        SizedBox(
                          width: 300,
                          child: TextFormField
                          //Padding(padding: Size.fromWidth(20), Size.fromHeight(30),
                            (
                            // controller: _firstnameController,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(12)
                              ),
                              hintText: "Enter NID",
                              labelText: "Enter NID",
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30.0,
                        ),

                        Container(
                          alignment: Alignment.center,

                          child: ElevatedButton(
                            onPressed: () {
                              //     searchApplicant(textController.text);
                              /*

                          Navigator.pushNamed(
                            context,
                            MyRoutes.lognipage,
                          );

                           */
                            }  ,
                            child:Text('Search'),


                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xffd97348),

                              //Color(0xffeb6f1c),

                            ),

                          ),
                        ),
                      ]
                  )
              )

          )

      ),
    );
  }
}