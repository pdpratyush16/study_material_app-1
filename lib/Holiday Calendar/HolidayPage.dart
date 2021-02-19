import 'package:flutter/material.dart';
import 'package:study_material_app/Holiday Calendar/calendar.dart';
import '../Animation/CustomWidgets.dart';

class HolidayPage extends StatefulWidget {
  static const String id = 'HolidayPage';
  @override
  _HolidayPageState createState() => _HolidayPageState();
}

class _HolidayPageState extends State<HolidayPage> {
  int count = 0;
  Calendar calendar = Calendar();
  @override
  Widget build(BuildContext context) {
    Widget calendarBody() {
      return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        addAutomaticKeepAlives: true,
        itemCount: calendar.holidays.length,
        itemBuilder: (_, i) => Padding(
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
                color: kSecondColor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 5,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0), //or 15.0
                          child: Container(
                            height: 70.0,
                            width: 70.0,
                            color: Color(0xff8f94fb),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  calendar.holidays[i].date,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  calendar.holidays[i].month,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          )
                          //Icon(Icons.volume_up, color: Colors.white, size: 50.0),
                          ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Expanded(
                      flex: 11,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            calendar.holidays[i].name,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            calendar.holidays[i].day,
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w300,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    }

    Widget restrictedBody() {
      return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        addAutomaticKeepAlives: true,
        itemCount: calendar.restrictedHolidays.length,
        itemBuilder: (_, i) => Padding(
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
                color: kSecondColor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 5,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0), //or 15.0
                          child: Container(
                            height: 70.0,
                            width: 70.0,
                            color: Color(0xff8f94fb),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  calendar.restrictedHolidays[i].date,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  calendar.restrictedHolidays[i].month,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          )
                          //Icon(Icons.volume_up, color: Colors.white, size: 50.0),
                          ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Expanded(
                      flex: 11,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            calendar.restrictedHolidays[i].name,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            calendar.restrictedHolidays[i].day,
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w300,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    }

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
            Center(
              child: Text(
                'Holidays',
                style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.deepPurpleAccent,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            calendarBody(),
            Center(
              child: Text(
                'Restricted Holidays',
                style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.deepPurpleAccent,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            restrictedBody(),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
