import 'package:study_material_app/Holiday Calendar/holiday.dart';

class Calendar
{
  List <Holiday> holidays =[
    Holiday('New Year\'s Day','01','Friday','JAN',),
    Holiday('Makar Sankranti','15','Friday','JAN',),
    Holiday('Republic Day','26','Tuesday','JAN',),
    Holiday('Basant Panchami','16','Tuesday','FEB',),
    Holiday('Maha Shivaratri','11','Thursday','MAR',),
    Holiday('Holi','29-30','Monday-Tuesday','MAR',),
    Holiday('Good Friday','02','Friday','MAR',),
    Holiday('Dr.B.R. Ambedkar Jayanti','14','Wednesday','APR',),
    Holiday('Sarhul','15','Thursday','APR',),
    Holiday('Rama Navami','21','Wednesday','APR',),
    Holiday('Mahavir Jayanti','25','Sunday','APR',),
    Holiday('Eid-ul-Fitr','14','Friday','MAY',),
    Holiday('Buddha Purnima','26','Wednesday','MAY',),
    Holiday('Rath Yatra','12','Monday','JUL',),
    Holiday('Eid-ul-Zoha','21','Wednesday','JUL',),
    Holiday('Independence Day','15','Sunday','AUG',),
    Holiday('Muharram','19','Thursday','AUG',),
    Holiday('Janmasthami','30','Monday','AUG',),
    Holiday('Karma/Vishwakarma Puja','17','Friday','SEPT',),
    Holiday('Gandhi Jayanti','02','Saturday','OCT',),
    Holiday('Durga Puja','11-15','Monday-Friday','OCT',),
    Holiday('Eid-e-Milad-un-Nabi','19','Tuesday','OCT',),
    Holiday('Deepawali','04','Thursday','NOV',),
    Holiday('Chhath Puja','10','Wednesday','NOV',),
    Holiday('Birsa Jayanti','15','Monday','NOV',),
    Holiday('Guru Nanak Jayanti','19','Friday','NOV',),
    Holiday('Christmas','25','Saturday','DEC',),
  ];
  List <Holiday> restrictedHolidays =[
    Holiday('Guru Gobind Singh Jayanti','05','Tuesday','JAN',),
    Holiday('Shab-e-Barat','29','Monday','MAR',),
    Holiday('Raksha Bandhan','22','Sunday','AUG',),
    Holiday('Goverdhan Puja','05','Friday','NOV',),
    Holiday('Bhaiduj/ Chitragupta Puja','06','Saturday','NOV',),
    Holiday('Chhath Puja (Pratah Ardhya)','11','Thursday','NOV',),

  ];
}