import 'dart:math';

import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  final String _centerText;
  final String _imageUrl;

  Test(this._centerText, this._imageUrl);

  @override
  _TestState createState() => _TestState(_centerText, _imageUrl);
}

class _TestState extends State<Test> {
  final String _centerText;
  final String _imageUrl;

  int _index = 0;
  final List _colors = [
    Colors.greenAccent,
    Colors.red,
    Colors.deepPurple,
    Colors.amberAccent
  ];
  final Random _random = new Random();

  int _indexImage = 0;

  final List<String> _urlList = [
    "https://upload.wikimedia.org/wikipedia/commons/1/17/Google-flutter-logo.png",
    "https://cdn-images-1.medium.com/max/1219/1*TFZQzyVAHLVXI_wNreokGA.png",
  ];

  _TestState(this._centerText, this._imageUrl);

  _changeIndex() {
    setState(() {
      if (_indexImage > 0) {
        _index--;
      } else {
        _indexImage++;
      }
    });
  }

  _changeImageUri() {
    setState(() {
      _indexImage = _random.nextInt(_urlList.length);
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
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Text(_centerText,
                    style:
                        TextStyle(fontSize: 25, fontStyle: FontStyle.italic)),
                new Image.network(
                  _urlList[_indexImage],
                  width: 250,
                  height: 250,
                ),
                new MaterialButton(
                  onPressed: _changeImageUri,
                  child: new Text("Click Me"),
                  color: Colors.deepOrange,
                  textColor: Colors.white,
                  elevation: 8,
                )
              ],
            ),
          )),
    );
  }
}
