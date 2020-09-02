
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:nice/chapter_eleven.dart';
import 'package:nice/chapter_nine.dart';
import 'package:nice/chapter_ten.dart';
import 'package:nice/chapter_thirteen.dart';
import 'package:nice/chapter_twelve.dart';
import 'package:nice/thirteen/nice_localizations_delegate.dart';
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
      localizationsDelegates: [
        ///自己必须写在最上面，否则获取不到
        NiceLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', 'US'),
        const Locale('en', 'UK'),
        const Locale('ja', 'JP'),
        const Locale.fromSubtags(languageCode: 'zh'),
        const Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hans'),
        const Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hant'),
        const Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hans', countryCode: 'CN'),
        const Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hant', countryCode: 'TW'),
        const Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hant', countryCode: 'HK')
      ],
      localeResolutionCallback: (locale, callback) {
        print("main " + locale.languageCode);
        return locale;
      },
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
        "chapter_twelve":(context) => ChapterTwelve(),
        "chapter_thirteen":(context) => ChapterThirteen(),
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


  _goToChapterTwelve() {
    Navigator.pushNamed(context, "chapter_twelve");
  }

  _goToChapterThirteen() {
    Navigator.pushNamed(context, "chapter_thirteen");
  }

  int _counter = 0;
  Offset _offset = Offset(0.4, 0.7); // new

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Transform(
      transform: Matrix4.identity()
        ..setEntry(3, 2, 0.001) // perspective
        ..rotateX(0.01 * _offset.dy)
        ..rotateY(-0.01* _offset.dx),
      alignment: FractionalOffset.center,
      child: GestureDetector(
        onPanUpdate: (details) => setState(() => _offset += details.delta),
        onDoubleTap: () => setState(() => _offset = Offset.zero),
        child: Scaffold(
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
                    FlatButton(onPressed: _goToChapterTwelve,
                        child: Text("12 Package & Plugin",
                          style: TextStyle(fontSize: 20.0),
                        )
                    ),
                    FlatButton(onPressed: _goToChapterThirteen,
                        child: Text("13 International",
                          style: TextStyle(fontSize: 20.0),
                        )
                    ),
                  ],
                ),
              )
            )
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}
