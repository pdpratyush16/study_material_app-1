import 'package:flutter/material.dart';
import 'package:study_material_app/Animation/CustomWidgets.dart';

class MapsHome extends StatefulWidget {
  static const String id = 'MapsHome';
  @override
  _MapsHomeState createState() => _MapsHomeState();
}

class _MapsHomeState extends State<MapsHome> {
  String _mainBuilding =
      'https://drive.google.com/file/d/1a_y83mKSVsfJZAuBsGh64BaIUFYnlIaP/view?usp=sharing';
  String _campus =
      'https://drive.google.com/file/d/1-JF_a4ctWFA0dDuEU-B5_cpQcGA4Y8xG/view?usp=sharing';

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
            Tile(
              title: 'Campus Plan',
              url: _campus,
              type: 0,
            ),
          ],
        ),
      ),
    );
  }
}
