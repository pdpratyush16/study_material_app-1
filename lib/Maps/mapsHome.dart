import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:study_material_app/Animation/CustomWidgets.dart';
import 'package:url_launcher/url_launcher.dart';

class MapsHome extends StatefulWidget {
  static const String id = 'MapsHome';
  @override
  _MapsHomeState createState() => _MapsHomeState();
}

class _MapsHomeState extends State<MapsHome> {
  String _mainBuilding =
      'https://drive.google.com/file/d/1a_y83mKSVsfJZAuBsGh64BaIUFYnlIaP/view?usp=sharing';
  Future<void> _launchInApp(String url) async {
    if (await canLaunch(url)) {
      await launch(url,
          forceSafariVC: true, forceWebView: true, enableJavaScript: true);
    } else {
      Alert(
              context: context,
              title: 'Error occured',
              desc: "Check your connections")
          .show();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgColor,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Background(
              height1: 280.0,
              height2: 150.0,
              height3: 100.0,
              height4: 100.0,
            ),
            Tile(
              title: 'Main Building Plan',
              url: _mainBuilding,
              type: 0,
            ),
          ],
        ),
      ),
    );
  }
}

//
