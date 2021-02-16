import 'dart:io';
import 'dart:async';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:study_material_app/user.dart';

class DatabaseHelper {
  static final String _dbName = 'attendanceDB.db';
  static final int _dbVersion = 1;
  static final String _tableName = 'myTable';
  static final String colunmId = 'id';
  static final String subject = 'subject';
  static final String absent = 'absent';
  static final String present = 'present';
  static final String total = 'total';

  DatabaseHelper._privateConstructor();

  static DatabaseHelper
      _databaseHelper; //Singleton object of AttendanceDatabase class
  static Database _db; //Singleton object of Database class

  factory DatabaseHelper() {
    if (_databaseHelper == null) {
      _databaseHelper = DatabaseHelper
          ._privateConstructor(); // This is executed only once, singleton object
    }
    return _databaseHelper;
  }

  Future<Database> get db async {
    if (_db != null) return _db;
    _db = await initialiseDatabase();
    return _db;
  }

  Future<Database> initialiseDatabase() async {
    Directory directory = await getApplicationDocumentsDirectory();
    print('In init db');
    print(directory.path);
    String path = join(directory.parent.path, _dbName);
    var userDatabase = await openDatabase(
      path,
      version: _dbVersion,
      onCreate: _onCreate,
    );
    print(userDatabase);
    return userDatabase;
  }

  //CRUD Operations

  Future<void> _onCreate(Database db, int version) async {
    print('Inside onCreate');
    await db.execute('''
      CREATE TABLE $_tableName (
        $colunmId INTEGER PRIMARY KEY,
        $subject TEXT NOT NULL,
        $present INTEGER NOT NULL DEFAULT 0,
        $total INTEGER NOT NULL DEFAULT 0,
        CHECK ($total >= $present)
        )
      ''');
    print('Getting out of onCreate');
  }

  Future<int> insert(User user) async {
    Database db = await _databaseHelper.db;
    return await db.insert(_tableName, user.toMap());
  }

  Future<List<Map<String, dynamic>>> query() async {
    Database db = await _databaseHelper.db;
    return await db.query(_tableName);
  }

  Future update(User user) async {
    Database db = await _databaseHelper.db;
    int id = user.id;
    return await db.update(_tableName, user.toMap(),
        where: '$colunmId = ?', whereArgs: [id]);
  }

  Future<int> delete(int id) async {
    Database db = await _databaseHelper.db;
    return db.delete(_tableName, where: '$colunmId = ?', whereArgs: [id]);
  }

  Future<int> getCount() async {
    Database db = await _databaseHelper.db;
    List<Map<String, dynamic>> x =
        await db.rawQuery('SELECT COUNT (*) FROM $_tableName');
    return Sqflite.firstIntValue(x);
  }

  Future<List<User>> getNoteList() async {
    print('Inside getNoteList');
    var noteMapList = await query();
    int count = noteMapList.length;
    List<User> noteList = List<User>();
    for (int i = 0; i < count; i++) {
      noteList.add(User.fromMapObject(noteMapList[i]));
    }
    return noteList;
  }
}
