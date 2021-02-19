import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:study_material_app/Animation/CustomWidgets.dart';
import 'package:study_material_app/Attendance%20and%20Practice/graphPage.dart';
import 'package:study_material_app/Books/bookHome.dart';
import 'package:study_material_app/Maps/mapsHome.dart';
import 'package:study_material_app/screen/profilePage.dart';

class FrontPage extends StatefulWidget {
  static const String id = 'FrontPage';

  @override
  _FrontPageState createState() => _FrontPageState();
}

class _FrontPageState extends State<FrontPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Background(
              height1: 280.0,
              height2: 150.0,
              height3: 100.0,
              height4: 100.0,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: ReuseCard(
                    gesture: () {
                      setState(() {
                        Navigator.pushNamed(context, BookHome.id);
                      });
                    },
                    childCard: IconArea(
                      ic: FontAwesomeIcons.bookReader,
                      s: 'Study Aid',
                    ),
                  ),
                ),
                Expanded(
                  child: ReuseCard(
                    gesture: () {
                      setState(() {
                        Navigator.pushNamed(context, GraphPage.id);
                      });
                    },
                    childCard: IconArea(
                      ic: FontAwesomeIcons.listAlt,
                      s: 'Attendance',
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: ReuseCard(
                    gesture: () {
                      setState(() {
                        Navigator.pushNamed(context, MapsHome.id);
                      });
                    },
                    childCard: IconArea(
                      ic: FontAwesomeIcons.mapMarkedAlt,
                      s: 'Maps',
                    ),
                  ),
                ),
                Expanded(
                  child: ReuseCard(
                    gesture: () {
                      setState(() {
                        Navigator.of(context).pushNamed("/ERPHomeScreen");
                      });
                    },
                    childCard: IconArea(
                      ic: FontAwesomeIcons.laptop,
                      s: 'ERP',
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
              width: double.infinity,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // final SharedPreferences sharedPref =
          //     await SharedPreferences.getInstance();
          // sharedPref.remove('email');
          // Navigator.pop(context);
          setState(() {
            Navigator.pushNamed(context, ProfilePage.id);
          });
        },
        backgroundColor: kPrimaryColor,
        child: Icon(
          FontAwesomeIcons.user,
        ),
      ),
    );
  }
}
