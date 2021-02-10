import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
<<<<<<< HEAD
import 'package:study_material_app/user.dart';
import 'package:study_material_app/forms.dart';
import 'package:study_material_app/empty_state.dart';
import 'package:study_material_app/roundiconbutton.dart';
import 'package:study_material_app/roundiconbutton1.dart';
import 'package:percent_indicator/percent_indicator.dart';
class AttendanceHome extends StatefulWidget {

=======

class AttendanceHome extends StatelessWidget {
  List<String> _subjects = [];
  List<String> _subjectsVisible = [];
  String _subject = ' ';
  final _formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  String _error = ' ';
  String _userName = '';
>>>>>>> 88552767a44670a4fea9a962305e60ec4c755be3


  static const String id = 'AttendanceHome';
  @override
<<<<<<< HEAD
  _AttendanceHomeState createState() => _AttendanceHomeState();
}

class _AttendanceHomeState extends State<AttendanceHome> {

  List<UserForm> users = [];

  void onDelete(User _user) {
    setState(() {
      var find = users.firstWhere(
            (it) => it.user == _user,
        orElse: () => null,
      );
      if (find != null) users.removeAt(users.indexOf(find));
    });
  }

  ///on add form
  void onAddForm() {

    setState(() {
      var _user = User();
      users.add(UserForm(
        user: _user,
        onDelete: () => onDelete(_user),
      ));
    });

  }

  ///on save forms
  void onSave() {
    if (users.length > 0) {
      var allValid = true;
      users.forEach((form) => allValid = allValid && form.isValid());
      if (allValid) {
        var data = users.map((it) => it.user).toList();
        Navigator.push(
          context,
          MaterialPageRoute(
            fullscreenDialog: true,
            builder: (_) => Scaffold(
              appBar: AppBar(
                title: Text('Subjects'),
              ),
              body: ListView.builder(
                itemCount: data.length,
                itemBuilder: (_, i) =>
                    Padding(
                      padding: EdgeInsets.all(16),
                      child: Material(
                        elevation: 2,

                        clipBehavior: Clip.antiAlias,
                        borderRadius: BorderRadius.circular(8),
                        child: Container(
                          decoration: new BoxDecoration(
                            boxShadow: [

                              BoxShadow(
                                color: Colors.grey.shade400.withOpacity(0.5),
                                blurRadius: 25.0, // soften the shadow
                                spreadRadius: 10.0, //extend the shadow

                              )
                            ],
                          ),


                          child: Row(
                           children: <Widget>[
                                Padding(
                                 padding: const EdgeInsets.all(16.0),
                                 child: Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   mainAxisAlignment: MainAxisAlignment.start,
                                   children: <Widget>[
                                      Row(

                                       children: <Widget>[

                                         Icon(
                                           Icons.subject,
                                         ),
                                         SizedBox(width: 30,),
                                         Text(
                                           data[i].fullName,
                                           style: TextStyle(fontWeight: FontWeight.bold,),
                                         ),
                                       ],
                                     ),
                                      SizedBox(height: 20,),
                                      Row(

                                       children: <Widget>[

                                         Text(
                                           'Attendance :    ',
                                           style :
                                           TextStyle(fontWeight: FontWeight.bold,),
                                         ),
                                         Text(data[i].p.toString(),),
                                         Text('/',),
                                         Text(data[i].t.toString(),),
                                       ],
                                     ),
                                     SizedBox(height: 20,),
                                     Row(

                                       children: <Widget>[

                                         Text(
                                           'Status :    ',
                                           style :
                                           TextStyle(fontWeight: FontWeight.bold,),
                                         ),
                                       ],
                                     ),
                                     SizedBox(height: 15,),
                                     Row(
                                       children: <Widget>[
                                         Text(
                                           'we will write something here!!',
                                         ),
                                       ],
                                     ),
                                   ],
                                 ),
                               ),

                             Padding(
                               padding: const EdgeInsets.fromLTRB(50, 16, 0, 16),
                               child: Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 children: <Widget>[
                                   Row(
                                     children: [
                                       new CircularPercentIndicator(
                                         radius: 90.0,
                                         lineWidth: 12.0,
                                         animation: true,
                                         percent: data[i].p/data[i].t,
                                         center: new Text(
                                           ((data[i].p)*(100)/(data[i].t)).toStringAsFixed(2),
                                           style:
                                           new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                                         ),

                                         circularStrokeCap: CircularStrokeCap.square,
                                         progressColor: Colors.green.shade700,
                                       ),
                                     ],
                                   ),
                                   Row(
                                     mainAxisAlignment: MainAxisAlignment.center,
                                     children: <Widget>[
                                       RoundIconButton(
                                         icon: Icons.add,
                                           onPressed: () {
                                             setState(() {
                                               data[i].p++;
                                               data[i].t++;
                                             });
                                           }
                                       ),

                                       SizedBox(
                                         width: 2.0,
                                       ),
                                       RoundIconButton1(
                                         icon: Icons.remove,
                                           onPressed: () {
                                             setState(() {
                                               data[i].t++;
                                             });
                                           }),


                                     ],
                                   ),
                                 ],
                               ),
                             ),
                           ],
                          ),

                ),
                      ),
                    ),
=======
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
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
>>>>>>> 88552767a44670a4fea9a962305e60ec4c755be3
              ),
            ),
          ),
        );
      }
    }
  }

  @override

  Widget build(BuildContext context) {
    var dat = users.map((it) => it.user).toList();
    return Scaffold(
      appBar: AppBar(
        elevation: .0,
        leading: Icon(
          Icons.school,
        ),
<<<<<<< HEAD
        title: Text('ATTENDANCE MANAGER'),
        actions: <Widget>[
          FlatButton(
            child: Text('Save'),
            textColor: Colors.white,
            onPressed: onSave,
          )
        ],
      ),

      body: Container(

        child: users.length <= 0
            ? Center(
          child: EmptyState(
            title: 'Oops',
            message: 'Add your subjects by tapping add button below',
=======
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
>>>>>>> 88552767a44670a4fea9a962305e60ec4c755be3
          ),
        )
            :
        ListView.builder(
          addAutomaticKeepAlives: true,
          itemCount: users.length,

          itemBuilder: (_, i) =>
             users[i],

        ),
      ),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: onAddForm,
        foregroundColor: Colors.white,
      ),
    );
  }
<<<<<<< HEAD
=======

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
>>>>>>> 88552767a44670a4fea9a962305e60ec4c755be3
}
