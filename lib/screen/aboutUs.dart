import 'package:flutter/material.dart';
import 'package:study_material_app/Animation/CustomWidgets.dart';
import '../Animation/CustomWidgets.dart';

class AboutUs extends StatefulWidget {
  static const String id = 'AboutUs';
  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgColor,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            /*Background(
              height1: 280.0,
              height2: 150.0,
              height3: 100.0,
              height4: 100.0,
            ),*/
            SizedBox(height: 50.0),
            DevsTileDesign(name: 'DEVELOPERS'),
            SizedBox(height: 4.0),
            Padding(
              padding: const EdgeInsets.fromLTRB(9, 0, 9, 0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 60.0,
                          backgroundColor: Colors.black,
                          child: Image.asset(
                            'assets/avatar/1.png',
                            fit: BoxFit.scaleDown,
                            height: 120.0,
                            width: 120.0,
                          ),
                        ),
                        Info(type: 1, text: 'ROHAN'),
                        Info(type: 2, text: 'could_be_rohan'),
                        Info(type: 3, text: 'btech10343.19@bitmesra.ac.in')
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 60.0,
                          backgroundColor: Colors.black,
                          child: Image.asset(
                            'assets/avatar/2.jpeg',
                            fit: BoxFit.scaleDown,
                            height: 120.0,
                            width: 120.0,
                          ),
                        ),
                        Info(type: 1, text: 'PRATYUSH DEV'),
                        Info(type: 2, text: 'call.me_pd'),
                        Info(type: 3, text: 'btech10344.19@bitmesra.ac.in')
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.fromLTRB(9, 0, 9, 0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 60.0,
                          backgroundColor: Colors.black,
                          child: Image.asset(
                            'assets/avatar/3.jpeg',
                            fit: BoxFit.scaleDown,
                            height: 120.0,
                            width: 120.0,
                          ),
                        ),
                        Info(type: 1, text: 'HARSH CHOUDHARY'),
                        Info(type: 2, text: 'harsh.choudhary_45'),
                        Info(type: 3, text: 'btech10363.19@bitmesra.ac.in')
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 60.0,
                          backgroundColor: Colors.black,
                          child: Image.asset(
                            'assets/avatar/4.jpg',
                            fit: BoxFit.scaleDown,
                            height: 120.0,
                            width: 120.0,
                          ),
                        ),
                        Info(type: 1, text: 'KUMAR MRITUNJAY'),
                        Info(type: 2, text: '_the_driving_force_'),
                        Info(type: 3, text: 'btech10361.19@bitmesra.ac.in')
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 50.0),
            DevsTileDesign(name: 'USERS GUIDE'),
            SizedBox(height: 4.0),
            Padding(
              padding: const EdgeInsets.fromLTRB(9, 0, 9, 0),
              child: UsersGuide(
                  message: 'Version : v 1.0.0\n\n'
                      'STABLE Internet connection required.\n\n'
                      'ATTENDANCE DATABASE is stored LOCALLY on USERS DEVICE. If app is uninstalled all records will be PERMANENTLY LOST.\n\n'
                      'SEMESTER 3 database will be uploaded before MO21 starts.\n\n'
                      'Contact devs for app support.\n'),
            ),
            SizedBox(height: 30.0)
          ],
        ),
      ),
    );
  }
}
