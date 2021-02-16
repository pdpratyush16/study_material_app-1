import 'package:flutter/material.dart';
import 'package:study_material_app/Animation/CustomWidgets.dart';

class BookHome extends StatelessWidget {
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
          CustomTileDesign(
            name: "BECE",
          ),
          CustomTileDesign(
            name: "BME",
          ),
          CustomTileDesign(
            name: "CHEMISTRY",
          ),
          CustomTileDesign(
            name: "MATHEMATICS I",
          )
        ],
      ),
    );
  }
}

class Aids extends StatelessWidget {
  static const String id = 'Aids';
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
          CustomTileDesign(
            name: "VIDEO LINK",
          ),
          CustomTileDesign(
            name: "E-BOOK",
          ),
        ],
      ),
    );
  }
}
