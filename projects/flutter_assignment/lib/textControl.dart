import 'package:flutter/material.dart';
import 'package:flutter_assignment/textOutput.dart';

class TestControl extends StatefulWidget {
  @override
  _TestControlState createState() => _TestControlState();
}

class _TestControlState extends State<TestControl> {
  String _mainText = 'This is the first assignment';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RaisedButton(
          child: Text("change Text!"),
          onPressed: () {
            setState(() {
              _mainText = 'This changed';
            });
          },
        ),
        TextOutput(_mainText),
      ], //[]
    );
  }
}
