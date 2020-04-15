import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('AskMeAnything'),
        ),
        body: Container(
          color: Colors.blue[200],
          child: Center(
            child: FlatButton(
              child: Image.asset('images/ball$ballNumber.png'),
              onPressed: () {
                setState(() {
                  ballNumber = Random().nextInt(5) + 1;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
