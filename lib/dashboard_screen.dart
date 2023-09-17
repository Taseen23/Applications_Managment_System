import 'package:flutter/material.dart';
import 'package:mcbp_practicum/widget/drawer.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text("MCBP",),
      ),
      drawer: MyDrawer(),

    );
  }
}
