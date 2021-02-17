import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:study_material_app/Animation/CustomWidgets.dart';
import 'aids.dart';

class BookHome extends StatefulWidget {
  static const String id = 'BookHome';
  @override
  _BookHomeState createState() => _BookHomeState();
}

class _BookHomeState extends State<BookHome> {
  String branch, semester;

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

    print(semester);
    print(branch);
  }

  @override
  void initState() {
    _getUserDetails();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Background(
            height1: 280.0,
            height2: 150.0,
            height3: 100.0,
            height4: 100.0,
          ),
          Text('Branch : $branch'),
          Text('Semester : $semester'),
        ],
      ),
    );
  }
}
