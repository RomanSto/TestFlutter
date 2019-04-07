import 'dart:math';

import 'package:flutter/material.dart';
import 'package:test_task_flutter_app/widgets_test/content.dart';
import 'package:test_task_flutter_app/widgets_test/my_drawer.dart';

class Test extends StatefulWidget {
  String _centerText;
  String _avatarUri;

  Test(this._centerText, this._avatarUri);

  @override
  _TestState createState() => _TestState(_centerText, _avatarUri);
}

class _TestState extends State<Test> {
  String _centerText;
  String _avatarUri;

  int _indexColor = 0;
  final List _colors = [
    Colors.greenAccent,
    Colors.red,
    Colors.deepPurple,
    Colors.amberAccent
  ];
  final Random _random = new Random();

  _TestState(this._centerText, this._avatarUri);

  _changeIndex() {
    setState(() {
      _indexColor = _random.nextInt(_colors.length);
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
          backgroundColor: _colors[_indexColor],
          drawer: MyDrawer(_avatarUri),
          body: Content(_centerText)
      ),
    );
  }
}
