import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: DicePage(),
      ),
    )
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int diceNumber = Random().nextInt(6) + 1;
  void changeDiceFace() {
    setState(() {
      diceNumber = Random().nextInt(6) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 100.0,),
            Text('Roll !!',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Pacifico',
                fontSize: 70.0
                ),
              ),
            Expanded(
            child: FlatButton(
               padding: EdgeInsets.symmetric(vertical : 10.0,horizontal: 45.0),
              child: Image.asset(
                'images/dice$diceNumber.png',
              ),
              onPressed: () {
                changeDiceFace();
              },
            ),
          ),
          ],
        ),
      ),
    );
  }
}