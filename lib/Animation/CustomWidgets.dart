import 'package:flutter/material.dart';
import 'package:study_material_app/Animation/FadeAnimation.dart';

const kActiveCol = Color(0xFF1D1E33);
const kInactiveCol = Color(0xFF111328);
const kBottomColor = Color(0xFFEB1555);
const kShadow = Color(0xFF4C4F5E);
const kPrimaryColor = Color(0xff8f94fb);
const kText = TextStyle(
  color: Colors.black,
  fontSize: 18.0,
);

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
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: [
            BoxShadow(
              color: kPrimaryColor,
              blurRadius: 20.0, // soften the shadow
              spreadRadius: 0.0, //extend the shadow
              offset: Offset(
                5.0, // Move to right 10  horizontally
                5.0, // Move to bottom 10 Vertically
              ),
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
      fillColor: Colors.green.shade700,
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
      fillColor: Colors.redAccent.shade700,
    );
  }
}

class EmptyState extends StatelessWidget {
  final String title, message;
  EmptyState({this.title, this.message});

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(16),
      elevation: 16,
      color: Theme.of(context).cardColor.withOpacity(.95),
      shadowColor: Theme.of(context).accentColor.withOpacity(.5),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(title, style: Theme.of(context).textTheme.headline5),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(message),
            ),
          ],
        ),
      ),
    );
  }
}
