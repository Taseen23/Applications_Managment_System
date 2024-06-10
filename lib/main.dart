import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:mcbp_practicum/theme.dart';
import 'package:mcbp_practicum/signup_screen.dart';
import 'package:mcbp_practicum/utils/routes.dart';
import 'package:mcbp_practicum/widget/drawer1.dart';
import 'adminpages/adminpages.dart';
import 'triggerpage.dart';
import 'userpages/userpages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyAJrJ8tZ8DpDD8Zbs60sDGEaGprfnY_wsQ",
          appId: "1:797924738770:android:13df8a7365112738dccf0b",
          messagingSenderId: "797924738770",
          projectId: "mcbp-practicum")

      //
      );
  Stripe.publishableKey =
      "pk_test_51OTKxSJqHrW7Yr6b1sqjp2ix4cEzA15uUznou03dxsAeae552UHlcQqSdOvtHFD8z0y4fZ6NpvzlltdiEvP9kWk400FsFXL11c";
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: const MaterialTheme(TextTheme()).light(),
      darkTheme: const MaterialTheme(TextTheme()).dark(),
      debugShowCheckedModeBanner: false,
      home: triggerScreen(),
      routes: {
        MyRoutes.lognipage: (Context) => LoginScreen(),
        MyRoutes.dashboard: (Context) => DashboardScreen(),
        MyRoutes.singup: (Context) => SingupScreen(),
        //MyRoutes.administrator: (Context) => Admin(),
        MyRoutes.final_selection: (Context) => FinalSelection(),
        MyRoutes.benificaries_admin: (Context) => Report(),
        MyRoutes.application: (Context) => Application(),
        MyRoutes.triggerpage: (Context) => triggerScreen(),
        MyRoutes.reportgen: (Context) => ReportGen(),
        MyRoutes.loginuserpage: (Context) => LoginScreen_user(),
        MyRoutes.dashboarduser: (Context) => DashboardScreen_user(),
        MyRoutes.drwaer_user: (Context) => MyDrawer_user(),
        MyRoutes.benifiries_user: (Context) => BenificariesUser(),
        MyRoutes.applicationuser: (Context) => ApplicationUser(),
      },
    );
  }
}
