import 'package:flutter/material.dart';

class Part3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(25),
        ),
        color: Colors.white,
      ),
      child: Padding(
        padding: EdgeInsets.fromLTRB(17, 20, 17, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Settings",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: Stl2(
                icons: "assets/images/phone.png",
                text1: "Phone number",
                text2: "Add number",
              ),
            ),
            Expanded(
              child: Stl2(
                icons: "assets/images/globe.png",
                text1: "Language",
                text2: "English (eng)",
              ),
            ),
            Expanded(
              child: Stl2(
                icons: "assets/images/money.png",
                text1: "Currency",
                text2: "US Dollar (\$)",
              ),
            ),
            Expanded(
              child: Stl2(
                icons: "assets/images/map-pin.png",
                text1: "Distance units",
                text2: "Mile",
              ),
            ),
            Expanded(
              child: Stl2(
                icons: "assets/images/house-simple.png",
                text1: "Coutry / region",
                text2: "Canada",
              ),
            ),
            Expanded(
              child: Stl2(
                icons: "assets/images/bell-simple.png",
                text1: "Notifications",
                text2: ">",
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Stl2 extends StatelessWidget {
  final String icons, text1, text2;
  const Stl2({
    Key key,
    this.icons,
    this.text1,
    this.text2,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            width: 27,
            height: 27,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(icons),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 4,
          child: Container(
            child: Text(
              text1,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                text2,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.blue),
              ),
            ],
          )),
        ),
      ],
    );
  }
}
