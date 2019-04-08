import 'package:flutter/material.dart';

class MyForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyFormState();
}

class MyFormState extends State<MyForm> {
  final _globalKey = GlobalKey<FormState>();
  String _userName;

  _checkValidity(String value) {
    if (value.isEmpty) {
      return "Please enter yout name";
    } else {
      _userName = value;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.0),
      child: Form(
          key: _globalKey,
          child: Column(
            children: <Widget>[
              Text(
                "Enter your name",
                style: TextStyle(fontSize: 16.0, color: Colors.white),
              ),
              TextFormField(validator: (value) {
                if (value.isEmpty) {
                  return "Please enter yout name";
                } else {
                  _userName = value;
                }
              }),
              SizedBox(
                height: 20.0,
              ),
              MaterialButton(
                  child: Text("Check"),
                  color: Colors.pink[200],
                  onPressed: () {
                    if (_globalKey.currentState.validate()) {
                      Scaffold.of(context).showSnackBar(
                          SnackBar(content: Text("Hello $_userName")));
                    }
                  })
            ],
          )),
    );
  }
}
