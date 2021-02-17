import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
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
  List<String> subjectList = [];
  List<Widget> tileList = [];

  Future<void> _getUserDetails() async {
    String uid = FirebaseAuth.instance.currentUser.uid;
    DocumentSnapshot doc = await FirebaseFirestore.instance.collection('UserDatabase').doc(uid).get();

    if (doc.exists) {
      // this will check availability of document
      setState(() {
        branch = doc.data()['Branch'];
        semester = doc.data()['Semester'];
      });
    } else {
      setState(() {
        branch = 'User is not available';
        semester = 'User is not available';
      });
    }
  }

  void _getSubjectList() {
    //Circuital...
    if (branch == 'CSE') {
      CSE ob = new CSE();
      if (semester == 'sem1')
        subjectList = ob.sem1;
      else if (semester == 'sem2')
        subjectList = ob.sem2;
      else if (semester == 'sem3')
        subjectList = ob.sem3;
      else if (semester == 'sem4')
        subjectList = ob.sem4;
      else if (semester == 'sem5')
        subjectList = ob.sem5;
      else if (semester == 'sem6')
        subjectList = ob.sem6;
      else if (semester == 'sem7')
        subjectList = ob.sem7;
      else if (semester == 'sem8') subjectList = ob.sem8;
    } else if (branch == 'IT') {
      IT ob = new IT();
      if (semester == 'sem1')
        subjectList = ob.sem1;
      else if (semester == 'sem2')
        subjectList = ob.sem2;
      else if (semester == 'sem3')
        subjectList = ob.sem3;
      else if (semester == 'sem4')
        subjectList = ob.sem4;
      else if (semester == 'sem5')
        subjectList = ob.sem5;
      else if (semester == 'sem6')
        subjectList = ob.sem6;
      else if (semester == 'sem7')
        subjectList = ob.sem7;
      else if (semester == 'sem8') subjectList = ob.sem8;
    } else if (branch == 'ECE') {
      ECE ob = new ECE();
      if (semester == 'sem1')
        subjectList = ob.sem1;
      else if (semester == 'sem2')
        subjectList = ob.sem2;
      else if (semester == 'sem3')
        subjectList = ob.sem3;
      else if (semester == 'sem4')
        subjectList = ob.sem4;
      else if (semester == 'sem5')
        subjectList = ob.sem5;
      else if (semester == 'sem6')
        subjectList = ob.sem6;
      else if (semester == 'sem7')
        subjectList = ob.sem7;
      else if (semester == 'sem8') subjectList = ob.sem8;
    } else if (branch == 'EEE') {
      EEE ob = new EEE();
      if (semester == 'sem1')
        subjectList = ob.sem1;
      else if (semester == 'sem2')
        subjectList = ob.sem2;
      else if (semester == 'sem3')
        subjectList = ob.sem3;
      else if (semester == 'sem4')
        subjectList = ob.sem4;
      else if (semester == 'sem5')
        subjectList = ob.sem5;
      else if (semester == 'sem6')
        subjectList = ob.sem6;
      else if (semester == 'sem7')
        subjectList = ob.sem7;
      else if (semester == 'sem8') subjectList = ob.sem8;
    }

    //Non - Circuital...
    else if (branch == 'MECH') {
      MECH ob = new MECH();
      if (semester == 'sem1')
        subjectList = ob.sem1;
      else if (semester == 'sem2')
        subjectList = ob.sem2;
      else if (semester == 'sem3')
        subjectList = ob.sem3;
      else if (semester == 'sem4')
        subjectList = ob.sem4;
      else if (semester == 'sem5')
        subjectList = ob.sem5;
      else if (semester == 'sem6')
        subjectList = ob.sem6;
      else if (semester == 'sem7')
        subjectList = ob.sem7;
      else if (semester == 'sem8') subjectList = ob.sem8;
    } else if (branch == 'CIV') {
      CIV ob = new CIV();
      if (semester == 'sem1')
        subjectList = ob.sem1;
      else if (semester == 'sem2')
        subjectList = ob.sem2;
      else if (semester == 'sem3')
        subjectList = ob.sem3;
      else if (semester == 'sem4')
        subjectList = ob.sem4;
      else if (semester == 'sem5')
        subjectList = ob.sem5;
      else if (semester == 'sem6')
        subjectList = ob.sem6;
      else if (semester == 'sem7')
        subjectList = ob.sem7;
      else if (semester == 'sem8') subjectList = ob.sem8;
    } else if (branch == 'CHEM') {
      CHEM ob = new CHEM();
      if (semester == 'sem1')
        subjectList = ob.sem1;
      else if (semester == 'sem2')
        subjectList = ob.sem2;
      else if (semester == 'sem3')
        subjectList = ob.sem3;
      else if (semester == 'sem4')
        subjectList = ob.sem4;
      else if (semester == 'sem5')
        subjectList = ob.sem5;
      else if (semester == 'sem6')
        subjectList = ob.sem6;
      else if (semester == 'sem7')
        subjectList = ob.sem7;
      else if (semester == 'sem8') subjectList = ob.sem8;
    } else if (branch == 'CPP') {
      CPP ob = new CPP();
      if (semester == 'sem1')
        subjectList = ob.sem1;
      else if (semester == 'sem2')
        subjectList = ob.sem2;
      else if (semester == 'sem3')
        subjectList = ob.sem3;
      else if (semester == 'sem4')
        subjectList = ob.sem4;
      else if (semester == 'sem5')
        subjectList = ob.sem5;
      else if (semester == 'sem6')
        subjectList = ob.sem6;
      else if (semester == 'sem7')
        subjectList = ob.sem7;
      else if (semester == 'sem8') subjectList = ob.sem8;
    } else if (branch == 'PROD') {
      PROD ob = new PROD();
      if (semester == 'sem1')
        subjectList = ob.sem1;
      else if (semester == 'sem2')
        subjectList = ob.sem2;
      else if (semester == 'sem3')
        subjectList = ob.sem3;
      else if (semester == 'sem4')
        subjectList = ob.sem4;
      else if (semester == 'sem5')
        subjectList = ob.sem5;
      else if (semester == 'sem6')
        subjectList = ob.sem6;
      else if (semester == 'sem7')
        subjectList = ob.sem7;
      else if (semester == 'sem8') subjectList = ob.sem8;
    } else {
      BIO ob = new BIO();
      if (semester == 'sem1')
        subjectList = ob.sem1;
      else if (semester == 'sem2')
        subjectList = ob.sem2;
      else if (semester == 'sem3')
        subjectList = ob.sem3;
      else if (semester == 'sem4')
        subjectList = ob.sem4;
      else if (semester == 'sem5')
        subjectList = ob.sem5;
      else if (semester == 'sem6')
        subjectList = ob.sem6;
      else if (semester == 'sem7')
        subjectList = ob.sem7;
      else if (semester == 'sem8') subjectList = ob.sem8;
    }
  }

  void _getTileList() {
    for (int i = 0; i < subjectList.length; i++) {
      tileList.add(CustomTileDesign(name: subjectList[i]));
    }
  }

  @override
  void initState() {
    _getUserDetails();
    _getSubjectList();
    _getTileList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(children: tileList),
    );
  }
}
