import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:study_material_app/Attendance%20and%20Practice/attendanceHome.dart';
import 'package:study_material_app/Attendance%20and%20Practice/practiceHome.dart';
import 'package:study_material_app/Books/bookHome.dart';
import 'package:study_material_app/Maps%20and%20erp/erpHome.dart';
import 'package:study_material_app/Maps%20and%20erp/mapsHome.dart';
import 'package:study_material_app/Videos/videoHome.dart';
import 'package:study_material_app/screen/FrontPage.dart';
import 'package:study_material_app/screen/loginPage.dart';
import 'package:study_material_app/screen/signUp.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:study_material_app/screen/signUpDetails.dart';
import 'screen/FrontPage.dart';
import 'screen/loginPage.dart';

String finalEmail;
Widget home;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        SignUpPage.id: (context) => SignUpPage(),
        LoginPage.id: (context) => LoginPage(),
        FrontPage.id: (context) => FrontPage(),
        SignupPageDetails.id: (context) => SignupPageDetails(),
        AttendanceHome.id: (context) => AttendanceHome(),
        PracticeHome.id: (context) => PracticeHome(),
        BookHome.id: (context) => BookHome(),
        ErpHome.id: (context) => ErpHome(),
        MapsHome.id: (context) => MapsHome(),
        VideoHome.id: (context) => VideoHome(),
      },
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    getValidation().whenComplete(() {
      home = finalEmail == null ? LoginPage() : FrontPage();
    });
    super.initState();
  }

  Future getValidation() async {
    final SharedPreferences sharedPref = await SharedPreferences.getInstance();
    String email = sharedPref.getString('email');
    setState(() {
      finalEmail = email;
    });
  }

  Widget build(BuildContext context) {
    return home;
  }
}
