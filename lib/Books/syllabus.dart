import 'package:flutter/material.dart';
import 'package:study_material_app/database/subjectCodeDatabase.dart';
import 'package:study_material_app/Animation/CustomWidgets.dart';
import 'package:study_material_app/database/Syllabus.dart';

class SyllabusScreen extends StatelessWidget {
  static const String id = 'SyllabusScreen';
  @override
  Widget build(BuildContext context) {
    final ScreenArguments args = ModalRoute.of(context).settings.arguments;
    String subject = args.subject;

    SubjectCode ob = new SubjectCode();
    String subjectCode = ob.subjectCode[subject];

    // Syllabus ob2 = new Syllabus();
    // var syllabus = ob2.getSyllabus("EC101");
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Background(
                height1: 280.0,
                height2: 150.0,
                height3: 100.0,
                height4: 100.0,
              ),
              SizedBox(height: 50.0),
              //SyllabusTile(heading: syllabus[0][0], message: syllabus[0][1]),


            ],
          ),
        ),
      ),
    );
  }
}

class ScreenArguments {
  final String subject;
  ScreenArguments(this.subject);
}
