import 'package:flutter/material.dart';
import 'package:study_material_app/Animation/CustomWidgets.dart';
import 'package:study_material_app/Animation/FadeAnimation.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class PasswordReset extends StatefulWidget {
  static const String id = 'PasswordReset';
  @override
  _PasswordResetState createState() => _PasswordResetState();
}

class _PasswordResetState extends State<PasswordReset> {
  String emailVal, status;
  final _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    void showAlertDialog(String title, String message) {
      AlertDialog alertDialog = AlertDialog(
        title: Text(title),
        content: Text(message),
      );
      showDialog(context: context, builder: (_) => alertDialog);
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
                padding: EdgeInsets.all(30.0),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 220),
                    FadeAnimation(
                      1.8,
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: kSecondColor,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: kPrimaryColor,
                              blurRadius: 30.0,
                              //offset: Offset(0, 10),
                            )
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: kSecondColor,
                                  ),
                                ),
                              ),
                              child: TextField(
                                style: TextStyle(color: kTextFieldColor),
                                cursorColor: kPrimaryColor,
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  labelText: "Email",
                                  hintText: 'Enter your email',
                                  hintStyle: TextStyle(color: Colors.grey),
                                  labelStyle: TextStyle(
                                    color: Colors.grey[400],
                                  ),
                                ),
                                onChanged: (value) {
                                  emailVal = value;
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 50),
                    FadeAnimation(
                      2,
                      Container(
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xff8f94fb),
                        ),
                        child: TextButton(
                          style: ButtonStyle(
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          ),
                          onPressed: () async {
                            if (emailVal != null) {
                              try {
                                await _auth.sendPasswordResetEmail(
                                    email: emailVal);

                                Navigator.pop(context);
                                showAlertDialog(
                                    'Done', 'Recovery link has been sent.');
                              } catch (error) {
                                switch (error.code) {
                                  case "invalid-email":
                                    status = 'Invalid Email';
                                    break;
                                  case "user-not-found":
                                    status = 'User not found';
                                    break;
                                  case "too-many-requests":
                                    status = 'Too many request';
                                    break;
                                  default:
                                    status = 'Undefined error';
                                    break;
                                }
                                Alert(
                                        context: context,
                                        title: status,
                                        desc: "Please try again")
                                    .show();
                              }
                            }
                          },
                          child: Center(
                            child: Text(
                              "Reset Password",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
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
