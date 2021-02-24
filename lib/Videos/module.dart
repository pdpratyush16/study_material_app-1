import 'package:flutter/material.dart';
import 'package:study_material_app/Animation/CustomWidgets.dart';
import 'package:study_material_app/Videos/videoHome.dart';

class ModulePage extends StatelessWidget {
  static const String id = 'ModulePage';
  @override
  Widget build(BuildContext context) {
    final Map args = ModalRoute.of(context).settings.arguments;
    String subject = args['Subject'];

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
              CustomTileDesign(
                name: "Module I",
                onPressed: () {
                  Navigator.pushNamed(context, VideoHome.id, arguments: {
                    'Subject': subject,
                    'Module': 1,
                  });
                },
              ),
              CustomTileDesign(
                name: "Module II",
                onPressed: () {
                  Navigator.pushNamed(context, VideoHome.id, arguments: {
                    'Subject': subject,
                    'Module': 2,
                  });
                },
              ),
              CustomTileDesign(
                name: "Module III",
                onPressed: () {
                  Navigator.pushNamed(context, VideoHome.id, arguments: {
                    'Subject': subject,
                    'Module': 3,
                  });
                },
              ),
              CustomTileDesign(
                name: "Module IV",
                onPressed: () {
                  Navigator.pushNamed(context, VideoHome.id, arguments: {
                    'Subject': subject,
                    'Module': 4,
                  });
                },
              ),
              CustomTileDesign(
                name: "Module V",
                onPressed: () {
                  Navigator.pushNamed(context, VideoHome.id, arguments: {
                    'Subject': subject,
                    'Module': 5,
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
