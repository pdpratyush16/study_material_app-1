import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:sqflite/sqflite.dart';
import 'package:study_material_app/Animation/CustomWidgets.dart';
import 'package:study_material_app/database/DatabaseHelper.dart';
import 'package:study_material_app/forms.dart';
import 'package:study_material_app/user.dart';

class GraphPage extends StatefulWidget {
  static const String id = 'GraphPage';
  @override
  _GraphPageState createState() => _GraphPageState();
}

class _GraphPageState extends State<GraphPage> {
  DatabaseHelper databaseHelper = DatabaseHelper();
  List<User> userList;
  int count = 0;
  @override
  Widget build(BuildContext context) {
    void updateListView() {
      debugPrint('In updateListView');
      final Future<Database> dbFuture = databaseHelper.initialiseDatabase();
      dbFuture.then((database) {
        Future<List<User>> userListFuture = databaseHelper.getNoteList();
        userListFuture.then((noteList) {
          setState(() {
            this.userList = noteList;
            this.count = noteList.length;
          });
        });
      });
    }

    String days(double present, double total) {
      int count = 0;
      if (present / total > 0.75) {
        while (present / total > 0.75) {
          count++;
          total++;
        }
        return ('$count absent possible');
      } else {
        while (present / total < 0.75) {
          count++;
          total++;
          present++;
        }
        return ('$count present required');
      }
    }

    if (userList == null) {
      userList = List<User>();
      print('In if block');
      updateListView();
    }

    void _showAlertDialog(String title, String message) {
      AlertDialog alertDialog = AlertDialog(
        title: Text(title),
        content: Text(message),
      );
      showDialog(context: context, builder: (_) => alertDialog);
    }

    Widget graphList() {
      return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        addAutomaticKeepAlives: true,
        itemCount: count,
        itemBuilder: (BuildContext context, int position) => Padding(
          padding: EdgeInsets.all(16.0),
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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.subject,
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Text(
                              userList[position].subject,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              'Attendance :    ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              userList[position].present.toString(),
                            ),
                            Text(
                              '/',
                            ),
                            Text(
                              userList[position].total.toString(),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              'Status :    ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              days(userList[position].present.toDouble(),
                                  userList[position].total.toDouble()),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          children: [
                            new CircularPercentIndicator(
                              radius: 90.0,
                              lineWidth: 12.0,
                              animation: true,
                              percent: userList[position].present /
                                  userList[position].total,
                              center: new Text(
                                ((userList[position].present) *
                                        (100) /
                                        (userList[position].total))
                                    .toStringAsFixed(2),
                                style: new TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0),
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
                                    userList[position].present++;
                                    userList[position].total++;
                                    databaseHelper.update(userList[position]);
                                  });
                                }),
                            SizedBox(
                              width: 2.0,
                            ),
                            RoundIconButton1(
                                icon: Icons.remove,
                                onPressed: () {
                                  setState(() {
                                    userList[position].total++;
                                    databaseHelper.update(userList[position]);
                                  });
                                }),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(0.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              databaseHelper.delete(userList[position].id);
                              _showAlertDialog(
                                  'Status', 'Deleted successfully');
                            });
                          },
                          child: Icon(
                            Icons.delete_rounded,
                          ),
                        ),
                        SizedBox(
                          height: 40.0,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }

    Widget getMainBody() {
      //count = userList.length();
      if (count == 0)
        return Center(
          child: EmptyState(
            title: 'Oops',
            message: 'Add your subjects by tapping add button below',
          ),
        );

      return graphList();
    }

    void goToForm(User user) async {
      await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return UserForm(user);
          },
        ),
      );
      updateListView();
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Background(
              height1: 280.0,
              height2: 150.0,
              height3: 100.0,
              height4: 100.0,
            ),
            getMainBody(),
            SizedBox(height: 50),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: kPrimaryColor,
        onPressed: () {
          goToForm(User('', 0, 0));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
