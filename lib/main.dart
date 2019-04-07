import 'package:flutter/material.dart';
import 'package:test_task_flutter_app/widget_test/test.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: Test("Hello Solid Software", ""),
  ));
}


