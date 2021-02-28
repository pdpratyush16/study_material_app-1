import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:study_material_app/Animation/CustomWidgets.dart';
import 'package:study_material_app/Animation/FadeAnimation.dart';
import 'package:study_material_app/database/signupPageDatabase.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UpdateScreen extends StatefulWidget {
  static const String id = 'UpdateScreenDetails';
  @override
  _UpdateScreenState createState() => _UpdateScreenState();
}

class _UpdateScreenState extends State<UpdateScreen> {
  String branchVal, nameVal, rollNoVal, semesterVal;
  final _firestore = FirebaseFirestore.instance;
  final _auth = FirebaseAuth.instance;
  User loggedInUser;

  Future<void> _getUserDetails() async {
    String uid = FirebaseAuth.instance.currentUser.uid;
    DocumentSnapshot doc = await FirebaseFirestore.instance
        .collection('UserDatabase')
        .doc(uid)
        .get();

    if (doc.exists) {
      // this will check availability of document
      setState(
        () {
          nameVal = doc.data()['Name'];
          rollNoVal = doc.data()['RollNo'];
          branchVal = doc.data()['Branch'];
          semesterVal = doc.data()['Semester'];
        },
      );
    } else {
      setState(
        () {
          nameVal = null;
          rollNoVal = null;
          branchVal = null;
          semesterVal = null;
        },
      );
    }
  }

  void _getCurrentUser() async {
    try {
      final user = _auth.currentUser;
      if (user != null) {
        loggedInUser = user;
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    _getCurrentUser();
    _getUserDetails();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
                padding: EdgeInsets.all(30.0),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 80),
                    FadeAnimation(
                      1.8,
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: kSecondColor,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: kPrimaryColor,
                              blurRadius: 30.0,
                              //offset: Offset(0, 10),
                            )
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              alignment: Alignment.topLeft,
                              padding: EdgeInsets.all(8.0),
                              child: DropdownButton<String>(
                                dropdownColor: kSecondColor,
                                style: TextStyle(color: kTextFieldColor),
                                isExpanded: true,
                                focusColor: Color.fromRGBO(143, 148, 251, 1),
                                items: branchDropdownList,
                                onChanged: (String value) {
                                  setState(() {
                                    branchVal = value;
                                  });
                                },
                                hint: Text(
                                  'Branch',
                                  style: TextStyle(color: Colors.grey[400]),
                                ),
                                value: branchVal,
                              ),
                            ), // Branch...
                            Container(
                              padding: EdgeInsets.all(8.0),
                              child: DropdownButton<String>(
                                dropdownColor: kSecondColor,
                                style: TextStyle(color: kTextFieldColor),
                                focusColor: Colors.white,
                                isExpanded: true,
                                items: semDropdownList,
                                onChanged: (String value) {
                                  setState(() {
                                    semesterVal = value;
                                  });
                                },
                                hint: Text(
                                  'Semester',
                                  style: TextStyle(color: Colors.grey[400]),
                                ),
                                value: semesterVal,
                              ),
                            ), // Semester...
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 140),
                    FadeAnimation(
                      2,
                      Container(
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xff8f94fb),
                        ),
                        child: TextButton(
                          style: ButtonStyle(
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          ),
                          onPressed: () {
                            setState(() {
                              if (nameVal != null &&
                                  branchVal != null &&
                                  rollNoVal != null &&
                                  semesterVal != null) {
                                _firestore
                                    .collection('UserDatabase')
                                    .doc(FirebaseAuth.instance.currentUser.uid)
                                    .update({
                                  'Branch': branchVal,
                                  'Email': loggedInUser.email,
                                  'RollNo': rollNoVal,
                                  'Semester': semesterVal,
                                  'Name': nameVal,
                                });
                                Navigator.pop(context);
                              }
                            });
                          },
                          child: Center(
                            child: Text(
                              "Update",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
