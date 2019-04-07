import 'package:flutter/material.dart';
import 'package:test_task_flutter_app/widgets_test/test.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: Test(
        "Hello Solid Software",
        "https://cdn-images-1.medium.com/max/1200/0*lOBcrb2bYgKV6VYT.png"),
  ));
}


