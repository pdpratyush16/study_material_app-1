class User {
  int _id;
  String _subject;
  int _present;
  int _total;

  User(this._subject, this._present, this._total);
  User.withId(this._id, this._subject, this._present, this._total);

  int get id => _id;
  String get subject => _subject;
  int get present => _present;
  int get total => _total;

  set subject(String newSubject) {
    if (newSubject.length <= 20) this._subject = newSubject;
  }

  set present(int noPresent) {
    this._present = noPresent;
  }

  set total(int noTotal) {
    this._total = noTotal;
  }

  //To convert a User object to Map
  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    if (_id != null) map['id'] = _id;
    map['subject'] = _subject;
    map['present'] = _present;
    map['total'] = _total;
    return map;
  }

  //To convert map into User
  User.fromMapObject(Map<String, dynamic> map) {
    this._id = map['id'];
    this._subject = map['subject'];
    this._present = map['present'];
    this._total = map['total'];
  }
}
