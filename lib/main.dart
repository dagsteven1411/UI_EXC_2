import 'package:exo_conge_2/Part1.dart';
import 'package:exo_conge_2/Part2.dart';
import 'package:exo_conge_2/Part3.dart';
import 'package:exo_conge_2/Part4.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(UI2());
}

class UI2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: UI2HomePage(),
    );
  }
}

class UI2HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Padding(
        padding: EdgeInsets.fromLTRB(0, 60, 0, 0),
        child: Column(
          children: [
            Expanded(
              child: Part1(),
              flex: 2,
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(flex: 2, child: Part2()),
            Expanded(
              child: Part3(),
              flex: 5,
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        height: 70,
        child: Part4(),
      ),
    );
  }
}
