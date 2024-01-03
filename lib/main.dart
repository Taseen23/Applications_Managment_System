import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:mcbp_practicum/login_screen.dart';
import 'package:mcbp_practicum/userpages/administrator.dart';
import 'package:mcbp_practicum/userpages/application.dart';
import 'package:mcbp_practicum/userpages/final_selection.dart';
import 'package:mcbp_practicum/userpages/report.dart';
import 'package:mcbp_practicum/signup_screen.dart';
import 'package:mcbp_practicum/userpages/report_gen.dart';
import 'package:mcbp_practicum/utils/routes.dart';

import 'adminpages/triggerpage.dart';
import 'dashboard_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(

      options: FirebaseOptions(
          apiKey: "AIzaSyAJrJ8tZ8DpDD8Zbs60sDGEaGprfnY_wsQ",
          appId: "1:797924738770:android:13df8a7365112738dccf0b",
          messagingSenderId: "797924738770",
          projectId: "mcbp-practicum")

      //
  );
  Stripe.publishableKey ="pk_test_51OTKxSJqHrW7Yr6b1sqjp2ix4cEzA15uUznou03dxsAeae552UHlcQqSdOvtHFD8z0y4fZ6NpvzlltdiEvP9kWk400FsFXL11c";
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: triggerScreen(),
      routes: {
        MyRoutes.lognipage: (Context) => LoginScreen(),
        MyRoutes.dashboard: (Context) => DashboardScreen(),
        MyRoutes.singup: (Context) => SingupScreen(),
        MyRoutes.administrator: (Context) => Admin(),
        MyRoutes.final_selection: (Context) => FinalSelection(),
        MyRoutes.report: (Context) => Report(),
        MyRoutes.application: (Context) => Application(),
        MyRoutes.triggerpage: (Context) => triggerScreen(),
        MyRoutes.reportgen: (Context) => ReportGen(),
      },
    );
  }
}
