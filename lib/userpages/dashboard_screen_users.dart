import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

import '../widget/drawer1.dart';

class DashboardScreen_user extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<String> imageAssetPaths = [
      'assists/images/image1.jpg',
      'assists/images/image2.jpg',
      'assists/images/image3.jpg',

    ];
    Map<String, double> dataMap = {
      "ইউনিয়ন": 400,
      "পৌরসভা": 300,
      "সিটি কর্পোরেশন": 200,
      //"Ionic": 2,
    };
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "MCBP",
        ),
        centerTitle: true,
      ),
      body:


      SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.topCenter,
              child: Container(
                width: MediaQuery.of(context).size.width / 0.1,
                child: PieChart(
                  dataMap: dataMap,
                  chartRadius: MediaQuery.of(context).size.width / 1.5,
                ),
              ),
            ),
            CarouselSlider(
              options: CarouselOptions(
                autoPlay: true, // Enable auto play
                aspectRatio: 16/9, // Adjust as needed
                enlargeCenterPage: true,
              ),
              items: imageAssetPaths.map((path){
                return Container(
                  margin: EdgeInsets.all(5.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    child: Image.asset(
                      path,
                      fit: BoxFit.cover,
                      width: 1000.0,
                    ),
                  ),
                );
              }).toList(),



            ),

            Container(
              child: Row(
                  children: [
                    SizedBox(
                      width: 130,
                    ),
                    GestureDetector(
                        onTap: () {},
                        child: Image.asset(
                            "assists/images/govlogo.png",
                            width: 80,
                            height: 65,
                            fit:BoxFit.fill)),
                    const SizedBox(
                      width: 15,
                    ),
                    GestureDetector(
                        onTap: () {},
                        child: Image.asset(
                            "assists/images/World-Food-Programme-Logo_e.jpg",
                            width: 80,
                            height: 60,
                            fit:BoxFit.fill)),
                    const SizedBox(
                      width: 15,
                    ),


                  ]


              ),
            ),
            Image.asset("assists/images/শ্লোগান.png",height: 250,width: 250,),



          ],
        ),



      ),




      drawer: MyDrawer_user(),
    );
  }
}
