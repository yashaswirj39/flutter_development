import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final AppBar appBar = AppBar(
    title: Text("Row And Column Pratice"),
  );
  @override
  Widget build(BuildContext context) {
    final column = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      //mainAxisAlignment: MainAxisAlignment.start,
      //mainAxisAlignment: MainAxisAlignment.end,
      //mainAxisAlignment: MainAxisAlignment.spaceAround,
      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //crossAxisAlignment: CrossAxisAlignment.start,
      //crossAxisAlignment: CrossAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      //crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text("This is a text widget",
          style: TextStyle(
            fontSize: 24.0,
          ),
        ),
        RaisedButton(
          onPressed: () {},
          child: Text("Raised button",
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
        ),
      ],
    );

    return MaterialApp(
      home: Scaffold(
        appBar: appBar,
        //body: column,
        body: Row(
          //mainAxisAlignment: MainAxisAlignment.center,
          //mainAxisAlignment: MainAxisAlignment.start,
          //mainAxisAlignment: MainAxisAlignment.end,
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            RaisedButton(
              onPressed: () {},
              child: Text("Raised button 1",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
            RaisedButton(
              onPressed: () {},
              child: Text("Raised button 2",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
