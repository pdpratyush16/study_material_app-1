import 'package:flutter/material.dart';
import 'package:study_material_app/Animation/CustomWidgets.dart';

class ComingSoon extends StatefulWidget {
  static const String id = 'ComingSoon';
  @override
  _ComingSoonState createState() => _ComingSoonState();
}

class _ComingSoonState extends State<ComingSoon> {
  @override
  Widget build(BuildContext context) {
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
              EmptyState(
                title: 'Coming soon',
                message: 'The syllabus for your subject is not available.',
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
