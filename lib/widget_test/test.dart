import 'dart:math';
import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  final String _centerText;

  Test(this._centerText);

  @override
  _TestState createState() => _TestState(_centerText);
}

class _TestState extends State<Test> {
  final String _centerText;

  int _index = 0;
  final List _colors = [
    Colors.greenAccent,
    Colors.red,
    Colors.deepPurple,
    Colors.amberAccent
  ];
  final Random _random = new Random();

  _TestState(this._centerText);

  _changeIndex() {
    setState(() {
      _index = _random.nextInt(_colors.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: _changeIndex,
      child: new Scaffold(
          appBar: new AppBar(
            title: new Text("Test Task"),
          ),
          backgroundColor: _colors[_index],
          body: new Center(
            child: new Text(_centerText,
                style: TextStyle(fontSize: 25, fontStyle: FontStyle.italic)),
          )),
    );
  }
}