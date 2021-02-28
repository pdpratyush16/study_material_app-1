import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Animation/CustomWidgets.dart';
import 'package:study_material_app/BIT_Bus/buslist.dart';

class Bus extends StatefulWidget {
  static const String id = 'Bus';
  @override
  _BusState createState() => _BusState();
}

class _BusState extends State<Bus> {
  String day = 'SUNDAY', busType = 'STUDENT';
  BusList list = BusList();
  @override
  Widget build(BuildContext context) {
    Widget busBody11() {
      return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        addAutomaticKeepAlives: true,
        itemCount: list.weekDayBusesStudent.length,
        itemBuilder: (_, i) => Padding(
          padding: EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
          child: Material(
            clipBehavior: Clip.antiAlias,
            // borderRadius: BorderRadius.circular(8),
            child: Padding(
              padding: const EdgeInsets.all(1.0),
              child: Container(
                decoration: new BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade700.withOpacity(0.5),
                      // blurRadius: 25.0, // soften the shadow
                      // spreadRadius: 10.0, //extend the shadow
                    )
                  ],
                  color: kSecondColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          list.weekDayBusesStudent[i].bmd,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 6.0),
                        child: Container(
                          color: Colors.grey.shade700,
                          height: 50,
                          width: 2,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          list.weekDayBusesStudent[i].dd,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 6.0),
                        child: Container(
                          color: Colors.grey.shade700,
                          height: 50,
                          width: 2,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          list.weekDayBusesStudent[i].xd,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 6.0),
                        child: Container(
                          color: Colors.grey.shade700,
                          height: 50,
                          width: 2,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          list.weekDayBusesStudent[i].ld,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 6.0),
                        child: Container(
                          color: Colors.grey.shade700,
                          height: 50,
                          width: 2,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          list.weekDayBusesStudent[i].ba,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    }

    Widget busBody12() {
      return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        addAutomaticKeepAlives: true,
        itemCount: list.weekDayBusesStudentAndStaff.length,
        itemBuilder: (_, i) => Padding(
          padding: EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
          child: Material(
            clipBehavior: Clip.antiAlias,
            // borderRadius: BorderRadius.circular(8),
            child: Padding(
              padding: const EdgeInsets.all(1.0),
              child: Container(
                decoration: new BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade700.withOpacity(0.5),
                      // blurRadius: 25.0, // soften the shadow
                      // spreadRadius: 10.0, //extend the shadow
                    )
                  ],
                  color: kSecondColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          list.weekDayBusesStudentAndStaff[i].bmd,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 6.0),
                        child: Container(
                          color: Colors.grey.shade700,
                          height: 50,
                          width: 2,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          list.weekDayBusesStudentAndStaff[i].dd,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 6.0),
                        child: Container(
                          color: Colors.grey.shade700,
                          height: 50,
                          width: 2,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          list.weekDayBusesStudentAndStaff[i].xd,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 6.0),
                        child: Container(
                          color: Colors.grey.shade700,
                          height: 50,
                          width: 2,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          list.weekDayBusesStudentAndStaff[i].ld,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 6.0),
                        child: Container(
                          color: Colors.grey.shade700,
                          height: 50,
                          width: 2,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          list.weekDayBusesStudentAndStaff[i].ba,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    }

    Widget busBody21() {
      return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        addAutomaticKeepAlives: true,
        itemCount: list.saturdayBusesStudent.length,
        itemBuilder: (_, i) => Padding(
          padding: EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
          child: Material(
            clipBehavior: Clip.antiAlias,
            // borderRadius: BorderRadius.circular(8),
            child: Padding(
              padding: const EdgeInsets.all(1.0),
              child: Container(
                decoration: new BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade700.withOpacity(0.5),
                      // blurRadius: 25.0, // soften the shadow
                      // spreadRadius: 10.0, //extend the shadow
                    )
                  ],
                  color: kSecondColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          list.saturdayBusesStudent[i].bmd,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 6.0),
                        child: Container(
                          color: Colors.grey.shade700,
                          height: 50,
                          width: 2,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          list.saturdayBusesStudent[i].dd,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 6.0),
                        child: Container(
                          color: Colors.grey.shade700,
                          height: 50,
                          width: 2,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          list.saturdayBusesStudent[i].xd,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 6.0),
                        child: Container(
                          color: Colors.grey.shade700,
                          height: 50,
                          width: 2,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          list.saturdayBusesStudent[i].ld,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 6.0),
                        child: Container(
                          color: Colors.grey.shade700,
                          height: 50,
                          width: 2,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          list.saturdayBusesStudent[i].ba,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    }

    Widget busBody22() {
      return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        addAutomaticKeepAlives: true,
        itemCount: list.saturdayBusesStaffAndStudent.length,
        itemBuilder: (_, i) => Padding(
          padding: EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
          child: Material(
            clipBehavior: Clip.antiAlias,
            // borderRadius: BorderRadius.circular(8),
            child: Padding(
              padding: const EdgeInsets.all(1.0),
              child: Container(
                decoration: new BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade700.withOpacity(0.5),
                      // blurRadius: 25.0, // soften the shadow
                      // spreadRadius: 10.0, //extend the shadow
                    )
                  ],
                  color: kSecondColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          list.saturdayBusesStaffAndStudent[i].bmd,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 6.0),
                        child: Container(
                          color: Colors.grey.shade700,
                          height: 50,
                          width: 2,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          list.saturdayBusesStaffAndStudent[i].dd,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 6.0),
                        child: Container(
                          color: Colors.grey.shade700,
                          height: 50,
                          width: 2,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          list.saturdayBusesStaffAndStudent[i].xd,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 6.0),
                        child: Container(
                          color: Colors.grey.shade700,
                          height: 50,
                          width: 2,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          list.saturdayBusesStaffAndStudent[i].ld,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 6.0),
                        child: Container(
                          color: Colors.grey.shade700,
                          height: 50,
                          width: 2,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          list.saturdayBusesStaffAndStudent[i].ba,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    }

    Widget busBody31() {
      return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        addAutomaticKeepAlives: true,
        itemCount: list.sundayBusesStudents.length,
        itemBuilder: (_, i) => Padding(
          padding: EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
          child: Material(
            clipBehavior: Clip.antiAlias,
            // borderRadius: BorderRadius.circular(8),
            child: Padding(
              padding: const EdgeInsets.all(1.0),
              child: Container(
                decoration: new BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade700.withOpacity(0.5),
                      // blurRadius: 25.0, // soften the shadow
                      // spreadRadius: 10.0, //extend the shadow
                    )
                  ],
                  color: kSecondColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          list.sundayBusesStudents[i].bmd,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 6.0),
                        child: Container(
                          color: Colors.grey.shade700,
                          height: 50,
                          width: 2,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          list.sundayBusesStudents[i].dd,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 6.0),
                        child: Container(
                          color: Colors.grey.shade700,
                          height: 50,
                          width: 2,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          list.sundayBusesStudents[i].xd,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 6.0),
                        child: Container(
                          color: Colors.grey.shade700,
                          height: 50,
                          width: 2,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          list.sundayBusesStudents[i].ld,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 6.0),
                        child: Container(
                          color: Colors.grey.shade700,
                          height: 50,
                          width: 2,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          list.sundayBusesStudents[i].ba,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    }

    Widget busBody32() {
      return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        addAutomaticKeepAlives: true,
        itemCount: list.sundayBusesStaffAndStudents.length,
        itemBuilder: (_, i) => Padding(
          padding: EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
          child: Material(
            clipBehavior: Clip.antiAlias,
            // borderRadius: BorderRadius.circular(8),
            child: Padding(
              padding: const EdgeInsets.all(1.0),
              child: Container(
                decoration: new BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade700.withOpacity(0.5),
                      // blurRadius: 25.0, // soften the shadow
                      // spreadRadius: 10.0, //extend the shadow
                    )
                  ],
                  color: kSecondColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          list.sundayBusesStaffAndStudents[i].bmd,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 6.0),
                        child: Container(
                          color: Colors.grey.shade700,
                          height: 50,
                          width: 2,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          list.sundayBusesStaffAndStudents[i].dd,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 6.0),
                        child: Container(
                          color: Colors.grey.shade700,
                          height: 50,
                          width: 2,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          list.sundayBusesStaffAndStudents[i].xd,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 6.0),
                        child: Container(
                          color: Colors.grey.shade700,
                          height: 50,
                          width: 2,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          list.sundayBusesStaffAndStudents[i].ld,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 6.0),
                        child: Container(
                          color: Colors.grey.shade700,
                          height: 50,
                          width: 2,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          list.sundayBusesStaffAndStudents[i].ba,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
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
        child: Container(
          child: Column(
            children: <Widget>[
              Background(
                height1: 280.0,
                height2: 150.0,
                height3: 100.0,
                height4: 100.0,
              ),
              Padding(
                padding: EdgeInsets.all(15.0),
                child: Column(
                  children: <Widget>[
                    Center(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: <Widget>[
                            RawMaterialButton(
                              child: Text('MON-FRI'),
                              onPressed: () {
                                setState(() {
                                  day = 'MONDAY';
                                });
                              },
                              elevation: 6.5,
                              constraints: BoxConstraints.tightFor(
                                height: 30.0,
                                width: 80.0,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6.0),
                              ),
                              fillColor: (day == 'MONDAY')
                                  ? kPrimaryColorActive
                                  : kPrimaryColor,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            RawMaterialButton(
                              child: Text('SATURDAY'),
                              onPressed: () {
                                setState(() {
                                  day = 'SATURDAY';
                                });
                              },
                              elevation: 6.5,
                              constraints: BoxConstraints.tightFor(
                                height: 30.0,
                                width: 80.0,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6.5),
                              ),
                              fillColor: (day == 'SATURDAY')
                                  ? kPrimaryColorActive
                                  : kPrimaryColor,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            RawMaterialButton(
                              child: Text('SUNDAY'),
                              onPressed: () {
                                setState(() {
                                  day = 'SUNDAY';
                                });
                              },
                              elevation: 6.5,
                              constraints: BoxConstraints.tightFor(
                                height: 30.0,
                                width: 80.0,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6.5),
                              ),
                              fillColor: (day == 'SUNDAY')
                                  ? kPrimaryColorActive
                                  : kPrimaryColor,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            RawMaterialButton(
                              child: Text('HOLIDAY'),
                              onPressed: () {
                                setState(() {
                                  day = 'HOLIDAY';
                                });
                              },
                              elevation: 6.5,
                              constraints: BoxConstraints.tightFor(
                                height: 30.0,
                                width: 80.0,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6.5),
                              ),
                              fillColor: (day == 'HOLIDAY')
                                  ? kPrimaryColorActive
                                  : kPrimaryColor,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 15.0),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: <Widget>[
                                RawMaterialButton(
                                  child: Text('STUDENT'),
                                  onPressed: () {
                                    setState(() {
                                      busType = 'STUDENT';
                                    });
                                  },
                                  elevation: 6.5,
                                  constraints: BoxConstraints.tightFor(
                                    height: 30.0,
                                    width: 73.0,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(6.0),
                                  ),
                                  fillColor: (busType == 'STUDENT')
                                      ? kPrimaryColorActive
                                      : kPrimaryColor,
                                ),
                                SizedBox(width: 7.5),
                                RawMaterialButton(
                                  child: Text('STAFF'),
                                  onPressed: () {
                                    setState(() {
                                      busType = 'STAFF';
                                    });
                                  },
                                  elevation: 6.5,
                                  constraints: BoxConstraints.tightFor(
                                    height: 30.0,
                                    width: 73.0,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(6.0),
                                  ),
                                  fillColor: (busType == 'STAFF')
                                      ? kPrimaryColorActive
                                      : kPrimaryColor,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: Container(
                  decoration: new BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade700.withOpacity(0.5),
                        // blurRadius: 25.0, // soften the shadow
                        // spreadRadius: 10.0, //extend the shadow
                      )
                    ],
                    borderRadius: BorderRadius.circular(8),
                    color: kPrimaryColor,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(3.0, 0.0, 8.0, 0.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            'BIT MESRA (D)',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              //color: Colors.black,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 6.0),
                          child: Container(
                            color: Colors.grey.shade700,
                            height: 50,
                            width: 2,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            'DORANDA (D)',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 6.0),
                          child: Container(
                            color: Colors.grey.shade700,
                            height: 50,
                            width: 2,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            'ST. XAVIER’S COLLEGE (D)',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 6.0),
                          child: Container(
                            color: Colors.grey.shade700,
                            height: 50,
                            width: 2,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            'LALPUR     (D)',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 6.0),
                          child: Container(
                            color: Colors.grey.shade700,
                            height: 50,
                            width: 2,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            'BIT MESRA (A)',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              ((day == 'MONDAY') && (busType == 'STUDENT'))
                  ? busBody11()
                  : ((day == 'MONDAY') && (busType == 'STAFF'))
                      ? busBody12()
                      : ((day == 'SATURDAY') && (busType == 'STUDENT'))
                          ? busBody21()
                          : ((day == 'SATURDAY') && (busType == 'STAFF'))
                              ? busBody22()
                              : ((day == 'SUNDAY') && (busType == 'STUDENT'))
                                  ? busBody31()
                                  : ((day == 'SUNDAY') && (busType == 'STAFF'))
                                      ? busBody32()
                                      : ((day == 'HOLIDAY') &&
                                              (busType == 'STUDENT'))
                                          ? busBody31()
                                          : busBody32()
            ],
          ),
        ),
      ),
    );
  }
}
