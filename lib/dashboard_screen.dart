import 'package:flutter/material.dart';
import 'package:mcbp_practicum/widget/drawer.dart';
import 'package:pie_chart/pie_chart.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                width: MediaQuery.of(context).size.width / 2, // Adjust the width as needed
                child: PieChart(
                  dataMap: dataMap,
                  chartRadius: MediaQuery.of(context).size.width / 1.2,
                ),
              ),
              ),


          ],
        ),



      ),




      drawer: MyDrawer(),
    );
  }
}
