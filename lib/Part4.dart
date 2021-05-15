import 'package:flutter/material.dart';

class Part4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Stl3(
            icono: "assets/images/airplane-tilt.png",
            txt: "Flights",
          ),
          Stl3(
            icono: "assets/images/bed.png",
            txt: "Hotels",
          ),
          Stl3(
            icono: "assets/images/car.png",
            txt: "Cars",
          ),
          Stl3(
            icono: "assets/images/link.png",
            txt: "Explorer",
          ),
          Stl3(
            icono: "assets/images/user.png",
            txt: "Profile",
          ),
        ],
      ),
    );
  }
}

class Stl3 extends StatelessWidget {
  final String icono, txt;
  const Stl3({
    Key key,
    this.icono,
    this.txt,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          width: 30,
          height: 30,
          child: Image.asset(icono),
        ),
        Text(
          txt,
          style: TextStyle(fontSize: 10),
        ),
      ],
    );
  }
}
