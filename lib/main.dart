
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutternice/ChapterFive.dart';
import 'package:flutternice/ChapterFour.dart';
import 'package:flutternice/ChapterOne.dart';
import 'package:flutternice/ChapterSix.dart';
import 'package:flutternice/ChapterThree.dart';
import 'package:flutternice/ChapterTwo.dart';

void main() {
  runApp(MyApp()); 
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: "/",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        "chapterOne":(context) => ChapterOne(),
        "chapterTwo":(context) => ChapterTwo(),
        "chapterThree":(context) => ChapterThree(),
        "chapterFour":(context) => ChapterFour(),
        "chapterFive":(context) => ChapterFive(),
        "chapterSix":(context) => ChapterSix(),
        "/":(context) => MyHomePage(title: "Nice flutter")
      },
    );
  }
  
}


class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  _goToChapterTwo() {
    Navigator.pushNamed(context, "chapterTwo");
  }

  _goToChapterThree() {
    Navigator.pushNamed(context, "chapterThree");
  }

  _goToChapterFour() {
    Navigator.pushNamed(context, "chapterFour");
  }

  _goToChapterFive() {
    Navigator.pushNamed(context, "chapterFive");
  }

  _goToChapterSix() {
    Navigator.pushNamed(context, "chapterSix");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: Center(
          child: Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                FlatButton(
                  onPressed: _goToChapterTwo, 
                  child: Text("2 First App", style: TextStyle(fontSize: 20.0))),
                FlatButton(
                  onPressed: _goToChapterThree, 
                  child: Text("3 Base widget", style: TextStyle(fontSize: 20.0))),
                FlatButton(
                  onPressed: _goToChapterFour, 
                  child: Text("4 Layout widget", style: TextStyle(fontSize: 20.0))),
                FlatButton(
                  onPressed: _goToChapterFive, 
                  child: Text("5 Container widget", style: TextStyle(fontSize: 20.0))),
                FlatButton(
                  onPressed: _goToChapterSix, 
                  child: Text("6 Scrollable widget", style: TextStyle(fontSize: 20.0),))
              ],
            ),
          )
        )
      )
    );
  }
}
