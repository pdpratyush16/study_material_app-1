import 'package:flutter/material.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:study_material_app/Animation/CustomWidgets.dart';
import 'package:study_material_app/Animation/FadeAnimation.dart';
import 'package:study_material_app/screen/FrontPage.dart';
import 'package:study_material_app/screen/signUp.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  static const String id = 'loginScreen';

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String emailVal, passwordVal;
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
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: kSecondColor,
                                    ),
                                  ),
                                ),
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
                              ),
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
                              )
                            ],
                          ),
                        ),
                      ),
                      /* FadeAnimation(
                          1.5,
                          Container(
                            child: InkWell(
                              child: Text(
                                "Forgot Password?",
                                style: TextStyle(
                                  color: Color.fromRGBO(143, 148, 251, 1),
                                ),
                              ),
                            ),
                          )),*/
                      SizedBox(
                        height: 70,
                      ),
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
                              if (emailVal != null && passwordVal != null) {
                                setState(() {
                                  showSpinner = true;
                                });
                                try {
                                  final oldUser = await _auth.signInWithEmailAndPassword(
                                      email: emailVal, password: passwordVal);
                                  if (oldUser != null) {
                                    final SharedPreferences sharedPref =
                                        await SharedPreferences.getInstance();
                                    sharedPref.setString('email', emailVal);
                                    Navigator.pushNamed(context, FrontPage.id);
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
                                    case "wrong-password":
                                      status = 'Wrong password';
                                      break;
                                    case "user-not-found":
                                      status = 'User not found';
                                      break;
                                    case "email-already-exists":
                                      status = 'Email already in use';
                                      break;
                                    case "too-many-requests":
                                      status = 'Too many request';
                                      break;
                                    default:
                                      status = 'Undefined error';
                                  }
                                  setState(() {
                                    showSpinner = false;
                                  });
                                  Alert(context: context, title: status, desc: "Please try again").show();
                                }
                              }
                            },
                            child: Center(
                              child: Text(
                                "Login",
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      FadeAnimation(
                        2,
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'New to App?', //TODO: might have to change a/c to app name
                                style: TextStyle(color: Colors.white),
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              InkWell(
                                highlightColor: Colors.deepPurple,
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => SignUpPage(),
                                    ),
                                  );
                                },
                                child: Text(
                                  'Register',
                                  style: TextStyle(
                                    color: Color.fromRGBO(143, 148, 251, 1),
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
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
