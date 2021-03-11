import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:study_material_app/Animation/CustomWidgets.dart';
import 'package:study_material_app/Animation/FadeAnimation.dart';
import 'package:study_material_app/screen/aboutUs.dart';
import 'package:study_material_app/screen/loginPage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:study_material_app/screen/updateDetails.dart';
import '../Animation/CustomWidgets.dart';

class ProfilePage extends StatefulWidget {
  static const String id = 'profileScreen';
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String branch, semester, name, rollNo, email;

  bool loadingComplete() {
    if (email != 'null')
      return true;
    else
      return false;
  }

  Future<void> _getUserDetails() async {
    final SharedPreferences sharedPref = await SharedPreferences.getInstance();
    setState(() {
      branch = sharedPref.getString('branch');
      semester = sharedPref.getString('semester');
      name = sharedPref.getString('name');
      rollNo = sharedPref.getString('roll');
      email = sharedPref.getString('email');
    });
  }

  @override
  void initState() {
    _getUserDetails();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _getUserDetails();
    return Scaffold(
      backgroundColor: kBgColor,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Background(
                height1: 280.0,
                height2: 150.0,
                height3: 100.0,
                height4: 100.0,
              ),
              Padding(
                padding: EdgeInsets.all(0.0),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 20.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        InfoIconButton(
                            icon: FontAwesomeIcons.info,
                            onPressed: () async {
                              Navigator.pushNamed(context, AboutUs.id);
                            }),
                      ],
                    ),
                    Visibility(
                      visible: loadingComplete(),
                      child: FadeAnimation(
                        1.8,
                        Column(
                          children: [
                            CustomTileDesign(
                              name: 'Name  :  $name',
                            ),
                            CustomTileDesign(
                              name: 'Semester  :  $semester',
                            ),
                            CustomTileDesign(
                              name: 'Branch  :  $branch',
                            ),
                            CustomTileDesign(
                              name: 'Roll No  :  $rollNo',
                            ),
                            CustomTileDesign(
                              name: 'E-mail  :  $email',
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                ProfileIconButton(
                                    icon: FontAwesomeIcons.userEdit,
                                    onPressed: () async {
                                      Navigator.pushNamed(
                                          context, UpdateScreen.id);
                                    }),

                                ProfileIconButton(
                                    icon: FontAwesomeIcons.signOutAlt,
                                    onPressed: () async {
                                      SharedPreferences sharedPreference =
                                          await SharedPreferences.getInstance();
                                      sharedPreference.remove('email');
                                      sharedPreference.remove('name');
                                      sharedPreference.remove('branch');
                                      sharedPreference.remove('semester');
                                      sharedPreference.remove('roll');
                                      Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                              builder: (BuildContext context) =>
                                                  LoginPage()));
                                    }),
                                //SizedBox(width: 20.0)
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
