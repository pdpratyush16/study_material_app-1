import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class AttendanceHome extends StatelessWidget {
  List<String> _subjects = [];
  List<String> _subjectsVisible = [];
  String _subject = ' ';
  final _formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  String _error = ' ';
  String _userName = '';

  static const String id = 'AttendanceHome';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('ATTENDANCE MANAGER')),
      ),
      body: addSubjectButton(context),
    );
  }

  Widget addSubjectButton(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: GestureDetector(
            onTap: () {
              addSubjectForm(context);
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0xff8f94fb),
                borderRadius: new BorderRadius.all(Radius.elliptical(45, 45)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 25,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Add',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  )
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color(0xff8f94fb),
              borderRadius: new BorderRadius.all(Radius.elliptical(45, 45)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.remove,
                  color: Colors.white,
                  size: 25,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Remove',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  Future addSubjectForm(BuildContext context) {
    bool adding = false;
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return StatefulBuilder(
            builder: (context, setState) {
              return Dialog(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 10),
                    child: Form(
                        key: _formKey,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            _error == ' '
                                ? Container()
                                : Center(
                                    child: Text(
                                    '$_error',
                                    style: TextStyle(color: Colors.red),
                                  )),
                            _error == ' '
                                ? Container()
                                : SizedBox(
                                    height: 15,
                                  ),
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromRGBO(51, 204, 255, 0.3),
                                    blurRadius: 10,
                                    offset: Offset(0, 10),
                                  )
                                ],
                              ),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'Add subject name',
                                ),
                                validator: (val) => val.isEmpty
                                    ? 'Subject Name Can\'t Be Empty'
                                    : null,
                                onChanged: (val) => _subject = val,
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            adding
                                ? Center(
                                    child: Text("Adding ..."),
                                  )
                                : Row(
                                    children: <Widget>[
                                      Expanded(
                                        child: Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 45, vertical: 15),
                                          decoration: BoxDecoration(
                                            color: Color(0xff8f94fb),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20)),
                                          ),
                                          child: Center(
                                              child: Text(
                                            "Add",
                                            style:
                                                TextStyle(color: Colors.white),
                                          )),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Expanded(
                                        child: Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 45, vertical: 15),
                                          decoration: BoxDecoration(
                                            color: Color(0xff8f94fb),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20)),
                                          ),
                                          child: Center(
                                              child: Text(
                                            "Done",
                                            style:
                                                TextStyle(color: Colors.white),
                                          )),
                                        ),
                                      )
                                    ],
                                  ),
                          ],
                        )),
                  ),
                ),
              );
            },
          );
        });
  }
}
