import 'package:flutter/material.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:study_material_app/Animation/CustomWidgets.dart';
import 'package:study_material_app/Animation/FadeAnimation.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:study_material_app/screen/signUpDetails.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignUpPage extends StatefulWidget {
  static const String id = 'registerScreen';

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  String emailVal, passwordVal, confirmPasswordVal;
  String status;
  bool showSpinner = false;
  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: showSpinner,
      child: Scaffold(
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
                            children: [
                              Container(
                                padding: EdgeInsets.all(8.0),
                                // decoration: BoxDecoration(
                                //   border: Border(
                                //     bottom: BorderSide(
                                //       color: Colors.grey[100],
                                //     ),
                                //   ),
                                // ),
                                child: TextField(
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
                              ), // Email...
                              Container(
                                padding: EdgeInsets.all(8.0),
                                child: TextField(
                                  cursorColor: kPrimaryColor,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    labelText: "Password",
                                    hintText: 'Enter your password',
                                    hintStyle: TextStyle(color: Colors.grey),
                                    labelStyle: TextStyle(
                                      color: Colors.grey[400],
                                    ),
                                  ),
                                  obscureText: true,
                                  onChanged: (value) {
                                    passwordVal = value;
                                  },
                                ),
                              ), // Password...
                              Container(
                                padding: EdgeInsets.all(8.0),
                                child: TextField(
                                  cursorColor: kPrimaryColor,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    labelText: "Confirm Password",
                                    hintText: 'Re-enter your password',
                                    hintStyle: TextStyle(color: Colors.grey),
                                    labelStyle: TextStyle(
                                      color: Colors.grey[400],
                                    ),
                                  ),
                                  obscureText: true,
                                  onChanged: (value) {
                                    confirmPasswordVal = value;
                                  },
                                ),
                              ), //Confirm Password...
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 40),
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
                              setState(() {
                                showSpinner = true;
                              });
                              try {
                                if (passwordVal == confirmPasswordVal) {
                                  final newUser = await _auth
                                      .createUserWithEmailAndPassword(
                                          email: emailVal,
                                          password: passwordVal);
                                  if (newUser != null) {
                                    final SharedPreferences sharedPref =
                                        await SharedPreferences.getInstance();
                                    sharedPref.setString('email', emailVal);
                                    Navigator.pushNamed(
                                        context, SignupPageDetails.id);
                                  }
                                } else {
                                  Alert(
                                          context: context,
                                          title: 'Re-enter Password',
                                          desc:
                                              "Password and Confirm password do not match")
                                      .show();
                                }
                                setState(() {
                                  showSpinner = false;
                                });
                              } catch (error) {
                                print(error.code);
                                switch (error.code) {
                                  case "invalid-email":
                                    status = 'Invalid Email';
                                    break;
                                  case "email-already-in-use":
                                    status = 'Email already in use';
                                    break;
                                  default:
                                    status = 'Undefined error';
                                }
                                setState(() {
                                  showSpinner = false;
                                });
                                Alert(
                                  context: context,
                                  title: status,
                                  desc: "Please try again",
                                ).show();
                              }
                            },
                            child: Center(
                              child: Text(
                                "Sign Up",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      FadeAnimation(
                          2.2,
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Have an account?', //TODO: might have to change a/c to app name
                                  style: TextStyle(color: Colors.white),
                                ),
                                SizedBox(
                                  width: 5.0,
                                ),
                                InkWell(
                                  highlightColor: Colors.deepPurple,
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text(
                                    'Login',
                                    style: TextStyle(
                                      color: Color.fromRGBO(143, 148, 251, 1),
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ))
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
