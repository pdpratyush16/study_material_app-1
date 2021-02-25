import 'package:flutter/material.dart';
import 'package:study_material_app/Animation/CustomWidgets.dart';
import 'package:study_material_app/database/ebookDatabase.dart';

class EbookHome extends StatefulWidget {
  static const String id = 'EbookHome';
  @override
  _EbookHomeState createState() => _EbookHomeState();
}

class _EbookHomeState extends State<EbookHome> {
  @override
  Widget build(BuildContext context) {
    final Map args = ModalRoute.of(context).settings.arguments;
    String subject = args['Subject'];

    List<Map<String, String>> list;
    //SEM-1
    if (subject == 'BECE') list = EC101().books;
    if (subject == 'BME') list = ME101().books;
    if (subject == 'CHEMISTRY') list = CH101().books;
    if (subject == 'MATHEMATICS - I') list = MA103().books;
    //SEM-2
    if (subject == 'BEE') list = EE101().books;
    if (subject == 'MATHEMATICS - II') list = MA107().books;
    if (subject == 'PHYSICS') list = PH113().books;
    if (subject == 'PPS') list = CS101().books;

    Widget data() {
      // print(list);
      return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        addAutomaticKeepAlives: true,
        itemCount: list.length,
        itemBuilder: (BuildContext context, int position) => Tile(
          title: list[position].keys.elementAt(0),
          url: list[position].values.elementAt(0),
          type: 0,
        ),
      );
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
