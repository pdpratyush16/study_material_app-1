import 'package:study_material_app/BIT_Bus/busclass.dart';
import 'package:study_material_app/BIT_Bus/bus.dart';
class BusList
{
  List <BusClass> weekDayBusesStudent=[
     BusClass('06:15 AM'	,''	,'07:00 AM','07:05 AM','07:50 AM'),
     BusClass('11:00 AM'	,''	,'12:00 PM','12:05 PM','12:50 PM'),
     BusClass('01:10 PM'	,''	,'03:30 PM','03:35 PM','04:20 PM'),
     BusClass('05:30 PM'	,''	,' 07:00 PM','07:05 PM','08:00 PM'),

  ];
  List <BusClass> weekDayBusesStudentAndStaff=[
    BusClass('05:45 AM'	,'06:50 AM'	,'07:00 AM','07:05 AM','07:50 AM'),
    BusClass('06:15 AM'	,''	,'08:10 AM','08:15 AM','08:50 AM'),
    BusClass('06:50 AM'	,'08:00 AM'	,'','Kantatoli','08:50 AM'),
    BusClass('07:30 AM'	,'01:30 PM'	,'02:00 PM','02:05 PM','03:00 PM'),
    BusClass('08:10 AM'	,''	,'09:30 AM','09:35 AM','10:20 AM'),
    BusClass('09:10 AM'	,'12:15 PM'	,'01:00 PM','01:05 PM','02:00 PM'),
    BusClass('10:30 AM'	,''	,'','',''),
    BusClass('02:30 PM'	,''	,'04:15 PM','04:20 PM','05:10 PM'),
    BusClass('04:40 PM'	,''	,'05:40 PM','05:45 PM','06:40 PM'),
    BusClass('05:40 PM'	,'06:40 PM'	,'','08:10 PM','09:00 PM'),
    BusClass('05:40 PM'	,''	,'06:30 PM','06:35 PM','07:45 PM'),

  ];
  List <BusClass> saturdayBusesStudent=[
    BusClass('08:30 AM'	,''	,'10:00 AM','10:05 AM','10:50 AM'),
    BusClass('11:00 AM'	,''	,'12:00 PM','12:05 PM','12:50 PM'),
    BusClass('01:00 PM'	,''	,'03:15 PM','03:20 PM','04:10 PM'),
    BusClass('01:00 PM'	,''	,'03:30 PM','03:35 PM','04:25 PM'),
    BusClass('04:10 PM'	,''	,'05:40 PM','05:45 PM','06:40 PM'),
    BusClass('06:10 PM'	,''	,'07:00 PM','07:05 PM','08:00 PM'),

  ];

  List <BusClass> saturdayBusesStaffAndStudent=[
    BusClass('05:45 AM'	,'06:50 AM'	,'07:00 AM','07:05 AM','07:50 AM'),
    BusClass('06:15 AM'	,''	,'08:10 AM','08:15 AM','08:50 AM'),
    BusClass('06:50 AM'	,'08:00 AM'	,'','Kantatoli','08:50 AM'),
    BusClass('07:30 AM'	,'01:30 PM'	,'02:00 PM','02:05 PM','03:00 PM'),
    BusClass('08:10 AM'	,''	,'09:30 AM','09:35 AM','10:20 AM'),
    BusClass('09:10 AM'	,'12:15 PM'	,'01:00 PM','01:05 PM','02:00 PM'),
    BusClass('10:30 AM'	,''	,'','',''),
    BusClass('02:30 PM'	,''	,'04:15 PM','04:20 PM','05:10 PM'),
    BusClass('05:10 PM'	,''	,'','08:10 PM','09:00 PM'),

  ];
  List <BusClass> sundayBusesStudents=[
     BusClass('08:00 AM'	,''	,'09:30 AM','09:35 AM','10:20 AM'),
     BusClass('11:00 AM'	,''	,'12:00 PM','12:05 PM','12:50 PM'),
     BusClass('01:00 PM'	,''	,'03:15 PM','03:20 PM','04:10 PM'),
     BusClass('01:00 PM'	,''	,'03:30 PM','03:35 PM','04:25 PM'),
     BusClass('04:10 PM'	,''	,'05:40 PM','05:45 PM','06:40 PM'),
     BusClass('06:10 PM'	,''	,'07:00 PM','07:05 PM','08:00 PM'),

  ];
  List <BusClass> sundayBusesStaffAndStudents=[
    BusClass('08:30 AM'	,''	,'10:00 AM','10:05 AM','10:50 AM'),
    BusClass('10:30 AM'	,''	,'01:30 PM','01:35 PM','02:20 PM'),
    BusClass('03:00 PM'	,''	,'04:00 PM','08:10 PM','09:00 PM'),

  ];

}