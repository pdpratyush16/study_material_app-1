import 'package:flutter/material.dart';
import 'package:study_material_app/user.dart';

typedef OnDelete();

class UserForm extends StatefulWidget {
  final User user;
  final state = _UserFormState();
  final OnDelete onDelete;

  UserForm({Key key, this.user, this.onDelete}) : super(key: key);
  @override
  _UserFormState createState() => state;

  bool isValid() => state.validate();
}

class _UserFormState extends State<UserForm> {
  List<UserForm> users = [];
  final form = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Material(
        elevation: 1,
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
          child: Form(
            key: form,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                  child: Row(children: [
                    Expanded(
                      child: TextFormField(
                        initialValue: widget.user.fullName,
                        onSaved: (String value) {
                          widget.user.fullName = value;
                        },
                        validator: (val) =>
                            val.length > 3 ? null : 'subject name is invalid',
                        decoration: InputDecoration(
                          labelText: 'Subject Name',
                          hintText: 'Enter your subject name',
                          icon: Icon(Icons.copy),
                          isDense: true,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 60,
                    ),
                    IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: widget.onDelete,
                    ),
                  ]),
                ),
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: TextFormField(
                          initialValue: '0',
                          onSaved: (String value) {
                            widget.user.p = int.parse(value);
                          },
                          decoration: InputDecoration(
                            hintText: 'initially present',
                            icon: Icon(Icons.copy),
                            isDense: true,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: TextFormField(
                          initialValue: '0',
                          onSaved: (String value) {
                            widget.user.t = int.parse(value);
                          },
                          decoration: InputDecoration(
                            hintText: 'Total initial classes',
                            isDense: true,
                          ),
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
    );
  }

  ///form validator
  bool validate() {
    var valid = form.currentState.validate();
    if (valid) form.currentState.save();
    return valid;
  }
}
