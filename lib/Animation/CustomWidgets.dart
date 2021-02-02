import 'package:flutter/material.dart';

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
