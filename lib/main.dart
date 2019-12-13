import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepOrange,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.deepOrange[900],
        ),
        body: Dicess(),
      ),
    ),
  );
}

class Dicess extends StatefulWidget {
  @override
  _DicessState createState() => _DicessState();
}

class _DicessState extends State<Dicess> {
  int numberImage = 1;
  int numberImageTwo = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  numberImage = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset('images/dice$numberImage.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  numberImageTwo = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset('images/dice$numberImageTwo.png'),
            ),
          ),
        ],
      ),
    );
  }
}
