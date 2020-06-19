
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:nice/chapter_eleven.dart';
import 'package:nice/chapter_nine.dart';
import 'package:nice/chapter_ten.dart';
import 'chapter_eight.dart';
import 'ChapterFive.dart';
import 'ChapterFour.dart';
import 'ChapterOne.dart';
import 'ChapterSeven.dart';
import 'ChapterSix.dart';
import 'ChapterThree.dart';
import 'ChapterTwo.dart';

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
        "chapterSeven":(context) => ChapterSeven(),
        "chapter_eight":(context) => ChapterEight(),
        "chapter_nine":(context) => ChapterNine(),
        "chapter_ten":(context) => ChapterTen(),
        "chapter_eleven":(context) => ChapterEleven(),
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

  _goToChapterSeven() {
    Navigator.pushNamed(context, "chapterSeven");
  }

  _goToChapterEight() {
    Navigator.pushNamed(context, "chapter_eight");
  }

  _goToChapterNine() {
    Navigator.pushNamed(context, "chapter_nine");
  }

  _goToChapterTen() {
    Navigator.pushNamed(context, "chapter_ten");
  }


  _goToChapterEleven() {
    Navigator.pushNamed(context, "chapter_eleven");
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
                  child: Text("6 Scrollable widget", style: TextStyle(fontSize: 20.0),)),
                FlatButton(onPressed: _goToChapterSeven, 
                  child: Text("7 Functional widget", style: TextStyle(fontSize: 20.0),)),
                FlatButton(onPressed: _goToChapterEight,
                  child: Text("8 Event & Notification", style: TextStyle(fontSize: 20.0),)),
                FlatButton(onPressed: _goToChapterNine,
                    child: Text("9 Animation",
                      style: TextStyle(fontSize: 20.0),
                    )
                ),
                FlatButton(onPressed: _goToChapterTen,
                    child: Text("10 Custom widget",
                      style: TextStyle(fontSize: 20.0),
                    )
                ),
                FlatButton(onPressed: _goToChapterEleven,
                    child: Text("11 File & Request",
                      style: TextStyle(fontSize: 20.0),
                    )
                ),
              ],
            ),
          )
        )
      )
    );
  }
}
