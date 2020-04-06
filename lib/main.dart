import 'package:flutter/material.dart';
import 'package:flutternice/AssetsDemo.dart';
import 'package:flutternice/NewRoute.dart';
import 'package:flutternice/ProgressIndicator.dart';
import 'package:flutternice/TipRoute.dart';

import 'EnglishWords.dart';

void main() => runApp(MyApp());

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
        "newRoute":(context) => NewRoute(),
        "AssetsDemo":(context) => AssetsDemo(),
        "ProgressIndicator":(context) => ProgressIndicatorWidget(),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _goToNewRoute() {
    Navigator.pushNamed(context, "newRoute");
//    Navigator.push(context, MaterialPageRoute(builder: (context) {
//      return NewRoute();
//    }));
  }

  _goToTips() async {
      var result = await Navigator.push(context, MaterialPageRoute(builder: (context) {
        return TipRoute(text: "route args",);
      }));
      print("返回结果 $result");
  }

  _goToAssetsDemo() {
    Navigator.pushNamed(context, "AssetsDemo");
  }


  _goToProgressIndicator() {
    Navigator.pushNamed(context, 'ProgressIndicator');
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
            FlatButton(
              child: Text("Open new route"),
              textColor: Colors.blue,
              onPressed: _goToNewRoute,
            ),
            FlatButton(
              child: Text("Open tips"),
              textColor: Colors.green,
              onPressed: _goToTips,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RandomWordsWidget(),
              ],
            ),
            FlatButton(
              child: Text("Assets demo"),
              textColor: Colors.amberAccent,
              onPressed: _goToAssetsDemo,
            ),
            FlatButton(
              child: Text("ProgressIndicatorWidget"),
              textColor: Colors.greenAccent,
              onPressed: _goToProgressIndicator,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
