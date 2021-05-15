import 'package:flutter/material.dart';

class Part2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: 100,
            height: 150,
            child: Stl1(
              icon: "assets/images/file.png",
              text: "Passenger documents",
            ),
          ),
          Container(
            width: 100,
            height: 150,
            child: Stl1(
              icon: "assets/images/bell-simple.png",
              text: "Flight price tracking",
            ),
          ),
          Container(
            width: 100,
            height: 150,
            child: Stl1(
              icon: "assets/images/question.png",
              text: "Help center",
            ),
          ),
        ],
      ),
    );
  }
}

class Stl1 extends StatelessWidget {
  final String icon, text;
  const Stl1({
    Key key,
    this.icon,
    this.text,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Colors.white,
          ),
          child: Padding(
            padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
            child: Image.asset(
              icon,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 11,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
