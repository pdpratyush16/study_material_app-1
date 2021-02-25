import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Animation/CustomWidgets.dart';

class Bus extends StatefulWidget {
  static const String id = 'Bus';
  @override
  _BusState createState() => _BusState();
}

class _BusState extends State<Bus> {
  String day = 'SUNDAY', destination = 'BIT', busType = 'STUDENT';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgColor,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Background(
                height1: 400.0,
                height2: 200.0,
                height3: 150.0,
                height4: 150.0,
              ),
              Padding(
                padding: EdgeInsets.all(30.0),
                child: Column(
                  children: <Widget>[
                    Center(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: <Widget>[
                            RawMaterialButton(
                              child: Text('SUN'),
                              onPressed: () {
                                setState(() {
                                  day = 'SUNDAY';
                                });
                              },
                              elevation: 6.5,
                              constraints: BoxConstraints.tightFor(
                                height: 30.0,
                                width: 41.0,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6.0),
                              ),
                              fillColor: (day == 'SUNDAY') ? kPrimaryColorActive : kPrimaryColor,
                            ),
                            RawMaterialButton(
                              child: Text('MON'),
                              onPressed: () {
                                setState(() {
                                  day = 'MONDAY';
                                });
                              },
                              elevation: 6.5,
                              constraints: BoxConstraints.tightFor(
                                height: 30.0,
                                width: 41.0,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6.5),
                              ),
                              fillColor: (day == 'MONDAY') ? kPrimaryColorActive : kPrimaryColor,
                            ),
                            RawMaterialButton(
                              child: Text('TUE'),
                              onPressed: () {
                                setState(() {
                                  day = 'TUESDAY';
                                });
                              },
                              elevation: 6.5,
                              constraints: BoxConstraints.tightFor(
                                height: 30.0,
                                width: 41.0,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6.5),
                              ),
                              fillColor: (day == 'TUESDAY') ? kPrimaryColorActive : kPrimaryColor,
                            ),
                            RawMaterialButton(
                              child: Text('WED'),
                              onPressed: () {
                                setState(() {
                                  day = 'WEDESDAY';
                                });
                              },
                              elevation: 6.5,
                              constraints: BoxConstraints.tightFor(
                                height: 30.0,
                                width: 41.0,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6.5),
                              ),
                              fillColor: (day == 'WEDESDAY') ? kPrimaryColorActive : kPrimaryColor,
                            ),
                            RawMaterialButton(
                              child: Text('THU'),
                              onPressed: () {
                                setState(() {
                                  day = 'THURSDAY';
                                });
                              },
                              elevation: 6.5,
                              constraints: BoxConstraints.tightFor(
                                height: 30.0,
                                width: 41.0,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6.5),
                              ),
                              fillColor: (day == 'THURSDAY') ? kPrimaryColorActive : kPrimaryColor,
                            ),
                            RawMaterialButton(
                              child: Text('FRI'),
                              onPressed: () {
                                setState(() {
                                  day = 'FRIDAY';
                                });
                              },
                              elevation: 6.5,
                              constraints: BoxConstraints.tightFor(
                                height: 30.0,
                                width: 41.0,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6.5),
                              ),
                              fillColor: (day == 'FRIDAY') ? kPrimaryColorActive : kPrimaryColor,
                            ),
                            RawMaterialButton(
                              child: Text('SAT'),
                              onPressed: () {
                                setState(() {
                                  day = 'SATURDAY';
                                });
                              },
                              elevation: 6.5,
                              constraints: BoxConstraints.tightFor(
                                height: 30.0,
                                width: 41.0,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6.5),
                              ),
                              fillColor: (day == 'SATURDAY') ? kPrimaryColorActive : kPrimaryColor,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 15.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: <Widget>[
                              RawMaterialButton(
                                child: Text('To BIT'),
                                onPressed: () {
                                  setState(() {
                                    destination = 'BIT';
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
                                fillColor: (destination == 'BIT') ? kPrimaryColorActive : kPrimaryColor,
                              ),
                              SizedBox(width: 7.5),
                              RawMaterialButton(
                                child: Text('To RANCHI'),
                                onPressed: () {
                                  setState(() {
                                    destination = 'RANCHI';
                                  });
                                },
                                elevation: 6.5,
                                constraints: BoxConstraints.tightFor(
                                  height: 30.0,
                                  width: 73.0,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6.5),
                                ),
                                fillColor: (destination == 'RANCHI') ? kPrimaryColorActive : kPrimaryColor,
                              ),
                            ],
                          ),
                        ),
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
                                fillColor: (busType == 'STUDENT') ? kPrimaryColorActive : kPrimaryColor,
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
                                fillColor: (busType == 'STAFF') ? kPrimaryColorActive : kPrimaryColor,
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
