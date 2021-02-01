import 'package:flutter/material.dart';
import 'package:study_material_app/screen/TempPage.dart';
import 'package:study_material_app/screen/loginPage.dart';
import 'package:study_material_app/screen/signUp.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:study_material_app/screen/signUpDetails.dart';

void main() async{
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
        SignUpPage.id : (context) => SignUpPage(),
        LoginPage.id : (context) => LoginPage(),
        TempPage.id : (context) => TempPage(),
        SignupPageDetails.id : (context) => SignupPageDetails(),
      },
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LoginPage();
  }
}