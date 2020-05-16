import 'dart:ffi';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Media Query'),
    );
  }
}

class MyHomePage extends StatelessWidget {

  final String title;


  MyHomePage({this.title});

  @override
  Widget build(BuildContext context) {
    final widthOfScreen = MediaQuery.of(context).size.width;
    final heightOfScreen = MediaQuery.of(context).size.height;

    print("original width of screen: $widthOfScreen");
    print("original height of screen: $heightOfScreen");

    AppBar appBar = AppBar(title: Text(this.title),
    );

    final appBarHeight = appBar.preferredSize.height;
    final statusBarHeight = MediaQuery.of(context).padding.top;

    print("appBar height: $appBarHeight");
    print("statusBar height: $statusBarHeight");

    final double screenHeight = heightOfScreen - appBarHeight - statusBarHeight;

    print("total sreen height: $screenHeight");

    return Scaffold(
      appBar: appBar,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width * 0.2,
            height: screenHeight * 0.5,
            decoration: BoxDecoration(
              color: Colors.red,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.2,
            height: screenHeight * 0.5,
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}