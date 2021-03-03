import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:study_material_app/Animation/FadeAnimation.dart';
import 'package:url_launcher/url_launcher.dart';

const kPrimaryColor = Color(0xff8f94fb);
const kPrimaryColorActive = Color(0xffbdc0fc);
const kBgColor = Colors.black;
const kSecondColor = Color(0xff30363D);
const kText = TextStyle(
  color: Colors.white,
  fontSize: 18.0,
);
final kTextFieldColor = Colors.grey[400];

class ReuseCard extends StatelessWidget {
  final Widget childCard;
  final Function gesture;
  ReuseCard({this.childCard, this.gesture});
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: gesture,
      child: Container(
        height: 190.0,
        child: childCard,
        margin: EdgeInsets.all(18.0),
        decoration: BoxDecoration(
          color: kSecondColor,
          borderRadius: BorderRadius.circular(6.0),
          boxShadow: [
            BoxShadow(
              color: kPrimaryColor,
              blurRadius: 15.0, // soften the shadow
              spreadRadius: 0.0, //extend the shadow
              // offset: Offset(
              //   5.0, // Move to right 10  horizontally
              //   5.0, // Move to bottom 10 Vertically
              // ),
            )
          ],
        ),
      ),
    );
  }
}

class IconArea extends StatelessWidget {
  final IconData ic;
  final String s;
  IconArea({@required this.ic, @required this.s});
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          ic,
          color: kPrimaryColor,
          size: 80.0,
        ),
        SizedBox(height: 15.0),
        Text(
          s,
          style: kText,
        ),
      ],
    );
  }
}

class Background extends StatelessWidget {
  final double height1, height2, height3, height4;
  Background({this.height1, this.height2, this.height3, this.height4});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height1,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/background.png'),
            fit: BoxFit.fill),
      ),
      child: Stack(
        children: <Widget>[
          Positioned(
            left: 30,
            width: 80,
            height: height2,
            child: FadeAnimation(
              1,
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/light-1.png'),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 140,
            width: 80,
            height: height3,
            child: FadeAnimation(
              1.3,
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/light-2.png'),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            right: 40,
            top: 40,
            width: 80,
            height: height4,
            child: FadeAnimation(
              1.5,
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/clock.png'),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.icon, @required this.onPressed});

  final IconData icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 0.0,
      child: Icon(
        icon,
        color: Colors.white,
      ),
      onPressed: onPressed,
      constraints: BoxConstraints.tightFor(
        width: 36.0,
        height: 36.0,
      ),
      shape: CircleBorder(),
      fillColor: Colors.green,
    );
  }
}

class RoundIconButton1 extends StatelessWidget {
  RoundIconButton1({@required this.icon, @required this.onPressed});

  final IconData icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 0.0,
      child: Icon(
        icon,
        color: Colors.white,
      ),
      onPressed: onPressed,
      constraints: BoxConstraints.tightFor(
        width: 36.0,
        height: 36.0,
      ),
      shape: CircleBorder(),
      fillColor: Colors.red,
    );
  }
}

class EmptyState extends StatelessWidget {
  final String title, message;
  EmptyState({this.title, this.message});

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(16.0),
      elevation: 16,
      color: kSecondColor,
      shadowColor: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(color: Colors.white, fontSize: 24.0),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                message,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomTileDesign extends StatelessWidget {
  final String name;
  final Function onPressed;

  CustomTileDesign({
    @required this.name,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return RawMaterialButton(
      onPressed: onPressed,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
        margin: EdgeInsets.only(bottom: 16),
        width: size.width - 48,
        decoration: BoxDecoration(
          color: kSecondColor,
          borderRadius: BorderRadius.circular(38.5),
          boxShadow: [
            BoxShadow(
              offset: Offset(5, 5),
              blurRadius: 5,
              color: Color(0xFFD3D3D3).withOpacity(.45),
            ),
          ],
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: <Widget>[
              Text(
                name,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileIconButton extends StatelessWidget {
  final IconData icon;
  final Function onPressed;

  ProfileIconButton({@required this.icon, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(30, 5, 30, 10),
      child: RawMaterialButton(
        child: Icon(icon, color: Colors.white),
        onPressed: onPressed,
        elevation: 0.0,
        constraints: BoxConstraints.tightFor(
          width: 56.0,
          height: 56.0,
        ),
        shape: CircleBorder(),
        fillColor: kPrimaryColor,
      ),
    );
  }
}

class Tile extends StatelessWidget {
  final String title, url;
  final int type;
  Tile({@required this.title, @required this.url, this.type});
  Future<void> _launchInApp(String url) async {
    if (type == 1) {
      if (await canLaunch(url)) {
        await launch(
          url,
          forceSafariVC: true,
          forceWebView: false,
          enableJavaScript: true,
        );
      }
    } else {
      if (await canLaunch(url)) {
        await launch(
          url,
          forceSafariVC: true,
          forceWebView: true,
          enableJavaScript: true,
        );
      }
    }
    // else {
    //   Alert(
    //           context: context,
    //           title: 'Error occured',
    //           desc: "Check your connections")
    //       .show();
    // }

    // if (await canLaunch(url)) {
    //   await launch(
    //     url,
    //     forceSafariVC: true,
    //     forceWebView: true,
    //     enableDomStorage: true,
    //   );
    // } else {
    //   throw 'Could not launch $url';
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: GestureDetector(
        onTap: () {
          _launchInApp(url);
        },
        child: Material(
          elevation: 2,
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
              color: kSecondColor,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 5,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0), //or 15.0
                      child: Container(
                        height: 70.0,
                        width: 70.0,
                        color: Color(0xaa8f94fb),
                        child: (type == 1)
                            ? Icon(
                                FontAwesomeIcons.youtube,
                                color: Colors.white,
                                size: 35.0,
                              )
                            : Icon(
                                FontAwesomeIcons.filePdf,
                                color: Colors.white,
                                size: 35.0,
                              ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Expanded(
                    flex: 11,
                    child: Text(
                      title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        // fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Info extends StatelessWidget {
  final int type;
  final String text;
  Info({this.type, this.text});
  Icon getIcon(int type) {
    if (type == 1) {
      return Icon(
        FontAwesomeIcons.user,
        color: Colors.white,
        size: 22.5,
      );
    } else if (type == 2) {
      return Icon(
        FontAwesomeIcons.instagram,
        color: Colors.white,
        size: 22.5,
      );
    } else {
      return Icon(
        Icons.mail,
        color: Colors.white,
        size: 22.5,
      );
    }
  }

  void onTap() async {
    if (type == 2) {
      String url = 'https://www.instagram.com/$text/';
      if (await canLaunch(url)) {
        await launch(
          url,
          forceSafariVC: true,
          forceWebView: false,
          enableJavaScript: true,
        );
      }
    } else if(type == 3){
      String url = 'mailto:$text?subject=BitHub feedback';
      if (await canLaunch(url)) {
        await launch(
          url,
        );
      }
    }
  }

  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5.0),
      child: GestureDetector(
        onTap: onTap,
        child: Material(
          elevation: 7,
          clipBehavior: Clip.antiAlias,
          shadowColor: Colors.white,
          borderRadius: BorderRadius.circular(10),
          child: Container(
            decoration: new BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade400.withOpacity(0.5),
                  blurRadius: 25.0,
                  spreadRadius: 10.0,
                )
              ],
              color: Color(0xca30363A),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 3,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0), //or 15.0
                      child: Container(
                        child: getIcon(type),
                      ),
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                      child: VerticalDivider(
                        thickness: 10.0,
                        color: Colors.white,
                      ),
                      width: 10,
                    ),
                  ),
                  Expanded(
                    flex: 11,
                    child: Text(
                      text,
                      style: TextStyle(
                        fontSize: 11.5,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        // fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class DevsTileDesign extends StatelessWidget {
  final String name;

  DevsTileDesign({
    @required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      margin: EdgeInsets.only(bottom: 16),
      width: 180,
      decoration: BoxDecoration(
        color: kSecondColor,
        borderRadius: BorderRadius.circular(38.5),
        boxShadow: [
          BoxShadow(
            offset: Offset(5, 5),
            blurRadius: 5,
            color: Color(0xFFD3D3D3).withOpacity(.45),
          ),
        ],
      ),
      child: Center(
        child: Text(
          name,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class UsersGuide extends StatelessWidget {
  final String message;
  UsersGuide({this.message});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        borderRadius: BorderRadius.circular(16.0),
        elevation: 5,
        color: Color(0xca30363A),
        shadowColor: Colors.white,
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                message,
                style: TextStyle(color: Colors.white, fontSize: 9.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class InfoIconButton extends StatelessWidget {
  final IconData icon;
  final Function onPressed;

  InfoIconButton({@required this.icon, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(30, 5, 30, 10),
      child: RawMaterialButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Icon(icon, color: Colors.white),
        onPressed: onPressed,
        elevation: 0.0,
        constraints: BoxConstraints.tightFor(
          width: 44.0,
          height: 44.0,
        ),
        fillColor: kPrimaryColor,
      ),
    );
  }
}
