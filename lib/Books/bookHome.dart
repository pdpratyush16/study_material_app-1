import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:study_material_app/Animation/CustomWidgets.dart';
import 'package:study_material_app/database/semesterDatabase.dart';

import 'aids.dart';

class BookHome extends StatefulWidget {
  static const String id = 'BookHome';
  @override
  _BookHomeState createState() => _BookHomeState();
}

class _BookHomeState extends State<BookHome> {
  String branch, semester;
  var subjectList = [];

  Future<void> _getUserDetails() async {
    // String uid = FirebaseAuth.instance.currentUser.uid;
    // DocumentSnapshot doc = await FirebaseFirestore.instance
    //     .collection('UserDatabase')
    //     .doc(uid)
    //     .get();

    // if (doc.exists) {
    //   // this will check availability of document
    //   setState(() {
    //     branch = doc.data()['Branch'];
    //     semester = doc.data()['Semester'];
    //   });
    // } else {
    //   setState(() {
    //     branch = 'User is not available';
    //     semester = 'User is not available';
    //   });
    // }
    final SharedPreferences sharedPref = await SharedPreferences.getInstance();
    setState(() {
      branch = sharedPref.getString('branch');
      semester = sharedPref.getString('semester');
    });

    _getSubjectList();
    _getTileList();
  }

  void _getSubjectList() {
    //Circuital...
    if (branch == 'CSE') {
      CSE ob = new CSE();
      if (semester == '1')
        subjectList = ob.sem1;
      else if (semester == '2')
        subjectList = ob.sem2;
      else if (semester == '3')
        subjectList = ob.sem3;
      else if (semester == '4')
        subjectList = ob.sem4;
      else if (semester == '5')
        subjectList = ob.sem5;
      else if (semester == '6')
        subjectList = ob.sem6;
      else if (semester == '7')
        subjectList = ob.sem7;
      else if (semester == '8') subjectList = ob.sem8;
    } else if (branch == 'IT') {
      IT ob = new IT();
      if (semester == '1')
        subjectList = ob.sem1;
      else if (semester == '2')
        subjectList = ob.sem2;
      else if (semester == '3')
        subjectList = ob.sem3;
      else if (semester == '4')
        subjectList = ob.sem4;
      else if (semester == '5')
        subjectList = ob.sem5;
      else if (semester == '6')
        subjectList = ob.sem6;
      else if (semester == '7')
        subjectList = ob.sem7;
      else if (semester == '8') subjectList = ob.sem8;
    } else if (branch == 'ECE') {
      ECE ob = new ECE();
      if (semester == '1')
        subjectList = ob.sem1;
      else if (semester == '2')
        subjectList = ob.sem2;
      else if (semester == '3')
        subjectList = ob.sem3;
      else if (semester == '4')
        subjectList = ob.sem4;
      else if (semester == '5')
        subjectList = ob.sem5;
      else if (semester == '6')
        subjectList = ob.sem6;
      else if (semester == '7')
        subjectList = ob.sem7;
      else if (semester == '8') subjectList = ob.sem8;
    } else if (branch == 'EEE') {
      EEE ob = new EEE();
      if (semester == '1')
        subjectList = ob.sem1;
      else if (semester == '2')
        subjectList = ob.sem2;
      else if (semester == '3')
        subjectList = ob.sem3;
      else if (semester == '4')
        subjectList = ob.sem4;
      else if (semester == '5')
        subjectList = ob.sem5;
      else if (semester == '6')
        subjectList = ob.sem6;
      else if (semester == '7')
        subjectList = ob.sem7;
      else if (semester == '8') subjectList = ob.sem8;
    }

    //Non - Circuital...
    else if (branch == 'MECH') {
      MECH ob = new MECH();
      if (semester == '1')
        subjectList = ob.sem1;
      else if (semester == '2')
        subjectList = ob.sem2;
      else if (semester == '3')
        subjectList = ob.sem3;
      else if (semester == '4')
        subjectList = ob.sem4;
      else if (semester == '5')
        subjectList = ob.sem5;
      else if (semester == '6')
        subjectList = ob.sem6;
      else if (semester == '7')
        subjectList = ob.sem7;
      else if (semester == '8') subjectList = ob.sem8;
    } else if (branch == 'CIV') {
      CIV ob = new CIV();
      if (semester == '1')
        subjectList = ob.sem1;
      else if (semester == '2')
        subjectList = ob.sem2;
      else if (semester == '3')
        subjectList = ob.sem3;
      else if (semester == '4')
        subjectList = ob.sem4;
      else if (semester == '5')
        subjectList = ob.sem5;
      else if (semester == '6')
        subjectList = ob.sem6;
      else if (semester == '7')
        subjectList = ob.sem7;
      else if (semester == '8') subjectList = ob.sem8;
    } else if (branch == 'CHEM') {
      CHEM ob = new CHEM();
      if (semester == '1')
        subjectList = ob.sem1;
      else if (semester == '2')
        subjectList = ob.sem2;
      else if (semester == '3')
        subjectList = ob.sem3;
      else if (semester == '4')
        subjectList = ob.sem4;
      else if (semester == '5')
        subjectList = ob.sem5;
      else if (semester == '6')
        subjectList = ob.sem6;
      else if (semester == '7')
        subjectList = ob.sem7;
      else if (semester == '8') subjectList = ob.sem8;
    } else if (branch == 'CPP') {
      CPP ob = new CPP();
      if (semester == '1')
        subjectList = ob.sem1;
      else if (semester == '2')
        subjectList = ob.sem2;
      else if (semester == '3')
        subjectList = ob.sem3;
      else if (semester == '4')
        subjectList = ob.sem4;
      else if (semester == '5')
        subjectList = ob.sem5;
      else if (semester == '6')
        subjectList = ob.sem6;
      else if (semester == '7')
        subjectList = ob.sem7;
      else if (semester == '8') subjectList = ob.sem8;
    } else if (branch == 'PROD') {
      PROD ob = new PROD();
      if (semester == '1')
        subjectList = ob.sem1;
      else if (semester == '2')
        subjectList = ob.sem2;
      else if (semester == '3')
        subjectList = ob.sem3;
      else if (semester == '4')
        subjectList = ob.sem4;
      else if (semester == '5')
        subjectList = ob.sem5;
      else if (semester == '6')
        subjectList = ob.sem6;
      else if (semester == '7')
        subjectList = ob.sem7;
      else if (semester == '8') subjectList = ob.sem8;
    } else {
      BIO ob = new BIO();
      if (semester == '1')
        subjectList = ob.sem1;
      else if (semester == '2')
        subjectList = ob.sem2;
      else if (semester == '3')
        subjectList = ob.sem3;
      else if (semester == '4')
        subjectList = ob.sem4;
      else if (semester == '5')
        subjectList = ob.sem5;
      else if (semester == '6')
        subjectList = ob.sem6;
      else if (semester == '7')
        subjectList = ob.sem7;
      else if (semester == '8') subjectList = ob.sem8;
    }
  }

  Widget _getTileList() {
    List<Widget> tileList = new List<Widget>();

    tileList.add(Background(
      height1: 280.0,
      height2: 150.0,
      height3: 100.0,
      height4: 100.0,
    ));
    tileList.add(SizedBox(height: 50.0));
    for (int i = 0; i < subjectList.length; i++) {
      tileList.add(
        CustomTileDesign(
          name: subjectList[i],
          onPressed: () => Navigator.pushNamed(context, Aids.id,
              arguments: ScreenArguments(subjectList[i])),
        ),
      );
    }
    int l = tileList.length;
    if (l == 2) {
      tileList.add(EmptyState(
        title: 'Coming Soon',
        message: 'The database for your semester is not available.',
      ));
    }
    return SingleChildScrollView(
      child: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center, children: tileList),
      ),
    );
  }

  @override
  void initState() {
    _getUserDetails();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black, body: _getTileList());
  }
}
