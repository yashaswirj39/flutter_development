import 'package:flutter/material.dart';
import './textControl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Assignment"),
          backgroundColor: Colors.deepPurple,
        ),
        body: TestControl(),
      ),
    );
  }
}
