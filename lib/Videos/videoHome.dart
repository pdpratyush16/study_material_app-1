import 'package:flutter/material.dart';
import 'package:study_material_app/Animation/CustomWidgets.dart';
import 'package:study_material_app/database/videoDatabase.dart';

class VideoHome extends StatefulWidget {
  static const String id = 'VideoHome';
  @override
  _VideoHomeState createState() => _VideoHomeState();
}

class _VideoHomeState extends State<VideoHome> {
  @override
  Widget build(BuildContext context) {
    final Map args = ModalRoute.of(context).settings.arguments;
    String subject = args['Subject'];
    int module = args['Module'];
    VideoDatabase ob = new VideoDatabase();
    List<Map<String, String>> list = ob.getList(subject, module);

    Widget data() {
      if (list.isEmpty == true) {
        return EmptyState(
          title: 'Coming soon',
          message: 'The videos for your subject are not available.',
        );
      } else {
        return ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          addAutomaticKeepAlives: true,
          itemCount: list.length,
          itemBuilder: (BuildContext context, int position) => Tile(
            title: list[position].keys.elementAt(0),
            url: list[position].values.elementAt(0),
            type: 1,
          ),
        );
      }
    }

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
              data(),
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
