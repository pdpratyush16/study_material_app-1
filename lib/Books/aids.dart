import 'package:flutter/material.dart';
import 'package:study_material_app/Animation/CustomWidgets.dart';

class Aids extends StatelessWidget {
  static const String id = 'Aids';
  @override
  Widget build(BuildContext context) {
    final ScreenArguments args = ModalRoute.of(context).settings.arguments;
    String subject = args.subject;

    print(subject);

    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTileDesign(
              name: "VIDEO LINK",
            ),
            CustomTileDesign(
              name: "E-BOOK",
            ),
          ],
        ),
      ),
    );
  }
}


class ScreenArguments {
  final String subject;
  ScreenArguments(this.subject);
}
