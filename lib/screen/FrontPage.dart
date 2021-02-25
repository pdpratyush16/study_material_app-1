import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:study_material_app/Animation/CustomWidgets.dart';
import 'package:study_material_app/Attendance%20and%20Practice/graphPage.dart';
import 'package:study_material_app/Books/bookHome.dart';
import 'package:study_material_app/Maps/mapsHome.dart';
import 'package:study_material_app/Holiday%20Calendar/HolidayPage.dart';
import 'package:study_material_app/BIT_Bus/bus.dart';
import 'package:study_material_app/screen/profilePage.dart';
import 'package:flutter_web_browser/flutter_web_browser.dart';

class FrontPage extends StatefulWidget {
  static const String id = 'FrontPage';

  @override
  _FrontPageState createState() => _FrontPageState();
}

class _FrontPageState extends State<FrontPage> {
  void _openErp() async{
    await FlutterWebBrowser.openWebPage(
      url: 'https://erp.bitmesra.ac.in/iitmsv4eGq0RuNHb0G5WbhLmTKLmTO7YBcJ4RHuXxCNPvuIw=?enc=EGbCGWnlHNJ/WdgJnKH8DA==',
      customTabsOptions: CustomTabsOptions(
        toolbarColor: kSecondColor,
        instantAppsEnabled: true,
      )
    );
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
                        _openErp();
                      });
                    },
                    childCard: IconArea(
                      ic: FontAwesomeIcons.laptop,
                      s: 'ERP',
                    ),
                  ),
                ),
                Expanded(
                  child: ReuseCard(
                    gesture: () {
                      setState(() {
                          Navigator.pushNamed(context, Bus.id);
                      });
                    },
                    childCard: IconArea(
                      ic: FontAwesomeIcons.bus,
                      s: 'BIT BUS',
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
                        Navigator.pushNamed(context, HolidayPage.id);
                      });
                    },
                    childCard: IconArea(
                      ic: FontAwesomeIcons.calendarAlt,
                      s: 'Holiday Calendar',
                    ),
                  ),
                ),
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
