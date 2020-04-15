import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  //positional argument constructor.
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, //it takes full width of a screen
      margin: EdgeInsets.all(20.0),
      child: Text(
      questionText,
      style: TextStyle(fontSize: 28),
      textAlign: TextAlign.center,
    ),
    );
  }
}
