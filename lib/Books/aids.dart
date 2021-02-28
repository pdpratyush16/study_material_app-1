import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:study_material_app/Books/ebookHome.dart';
import 'package:study_material_app/Videos/module.dart';
import 'package:study_material_app/database/subjectCodeDatabase.dart';
import 'package:study_material_app/Animation/CustomWidgets.dart';
import 'package:study_material_app/database/syllabusDatabase.dart';

class Aids extends StatelessWidget {
  static const String id = 'Aids';
  @override
  Widget build(BuildContext context) {
    final ScreenArguments args = ModalRoute.of(context).settings.arguments;
    String subject = args.subject;

    SubjectCode ob = new SubjectCode();
    String subjectCode = ob.subjectCode[subject];

    Future<void> _launchInApp(String url) async {
      if (await canLaunch(url)) {
        await launch(url, forceSafariVC: true, forceWebView: true, enableJavaScript: true);
      } else {
        Alert(context: context, title: 'Error occured', desc: "Check your connections").show();
      }
    }

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
              CustomTileDesign(
                name: 'SYLLABUS',
                onPressed: () {
                  Syllabus ob = new Syllabus();
                  String url = ob.getSyllabus(subjectCode);
                  if (url != '') {
                    _launchInApp(url);
                  }
                },
              ),
              CustomTileDesign(
                name: 'NOTES',
              ),
              CustomTileDesign(
                name: 'E-BOOK',
                onPressed: () {
                  Navigator.pushNamed(context, EbookHome.id, arguments: {
                    'Subject': subject,
                  });
                },
              ),
              CustomTileDesign(
                name: 'VIDEO LINK',
                onPressed: () {
                  Navigator.pushNamed(context, ModulePage.id, arguments: {
                    'Subject': subject,
                  });
                },
              ),
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
