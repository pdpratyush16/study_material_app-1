import 'package:flutter/material.dart';
import 'package:study_material_app/screen/loginPage.dart';
import 'package:study_material_app/screen/signUp.dart';

void main() => runApp(
      MyApp(),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/signUp': (BuildContext context) => new SignUpPage(),
        'login': (BuildContext context) => new LoginPage(),
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
