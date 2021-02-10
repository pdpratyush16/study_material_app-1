import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:study_material_app/Animation/FadeAnimation.dart';
import 'package:study_material_app/Animation/CustomWidgets.dart';
import 'package:study_material_app/Attendance%20and%20Practice/attendanceHome.dart';
import 'package:study_material_app/Books/bookHome.dart';
import 'package:study_material_app/Maps/mapsHome.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class FrontPage extends StatefulWidget {
  static const String id = 'FrontPage';

  @override
  _FrontPageState createState() => _FrontPageState();
}

class _FrontPageState extends State<FrontPage> {
  String _url =
      'https://erp.bitmesra.ac.in/iitmsv4eGq0RuNHb0G5WbhLmTKLmTO7YBcJ4RHuXxCNPvuIw=?enc=EGbCGWnlHNJ/WdgJnKH8DA==';
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
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 280,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/background.png'),
                    fit: BoxFit.fill),
              ),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    left: 30,
                    width: 80,
                    height: 150,
                    child: FadeAnimation(
                      1,
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/light-1.png'),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 140,
                    width: 80,
                    height: 100,
                    child: FadeAnimation(
                      1.3,
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/light-2.png'),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 40,
                    top: 40,
                    width: 80,
                    height: 100,
                    child: FadeAnimation(
                      1.5,
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/clock.png'),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
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
                        Navigator.pushNamed(context, AttendanceHome.id);
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
                        _launchInApp(_url);
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
        onPressed: () async {
          final SharedPreferences sharedPref =
              await SharedPreferences.getInstance();
          sharedPref.remove('email');
          Navigator.pop(context);
        },
        backgroundColor: kPrimaryColor,
        child: Icon(
          FontAwesomeIcons.user,
        ),
      ),
    );
  }
}
