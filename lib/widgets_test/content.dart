import 'package:flutter/material.dart';
import 'package:test_task_flutter_app/widgets_test/my_form.dart';

class Content extends StatefulWidget {
  String _centerText;

  Content(this._centerText);

  @override
  _ContentState createState() => _ContentState(_centerText);
}

class _ContentState extends State<Content> {
  String _centerText;
  int _indexImage = 0;

  _ContentState(this._centerText);

  final List<String> _urlList = [
    "https://upload.wikimedia.org/wikipedia/commons/1/17/Google-flutter-logo.png",
    "https://cdn-images-1.medium.com/max/1219/1*TFZQzyVAHLVXI_wNreokGA.png",
  ];

  _changeImageUri() {
    setState(() {
      if (_indexImage > 0) {
        _indexImage--;
      } else {
        _indexImage++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Center(
      child: new Column(
        children: <Widget>[
          MyForm(),
          SizedBox(height: 30.0,),
          Text(_centerText,
              style: TextStyle(fontSize: 25, fontStyle: FontStyle.italic)),
          Image.network(
            _urlList[_indexImage],
            width: 250,
            height: 250,
          ),
          MaterialButton(
            onPressed: _changeImageUri,
            child: Text("Click Me"),
            color: Colors.deepOrange,
            textColor: Colors.white,
            elevation: 8,
          )
        ],
      ),
    );
  }
}
