
import 'package:flutter/material.dart';
import 'package:flutternice/AssetsDemo.dart';
import 'package:flutternice/ButtonDemo.dart';
import 'package:flutternice/ImageIconDemo.dart';
import 'package:flutternice/NewRoute.dart';
import 'package:flutternice/ProgressIndicator.dart';
import 'package:flutternice/RowColumnDemo.dart';
import 'package:flutternice/StateManager.dart';
import 'package:flutternice/SwitchCheckBoxDemo.dart';
import 'package:flutternice/TextFormField.dart';
import 'package:flutternice/TextStyleDemo.dart';
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
        "StateManager":(context) => StateManager(),
        "TextStyleDemo":(context) => TextStyleDemo(),
        "ButtonDemo":(context) => ButtonDemo(),
        "ImageIconDemo":(context) => ImageIconDemo(),
        "SwitchCheckBoxDemo":(context) => SwitchCheckBoxDemo(),
        "TextFormFieldDemo":(context) => TextFormFieldDemo(),
        "ProgressIndicator":(context) => ProgressIndicatorWidget(),
        "RowColumnDemo":(context) => RowColumnDemo(),
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

  _goToStateManager() {
    Navigator.pushNamed(context, "StateManager");
  }

  _goToTextStyleDemo() {
    Navigator.pushNamed(context, "TextStyleDemo");
  }

  _goToButtonDemo() {
    Navigator.pushNamed(context, "ButtonDemo");
  }


  _goToImageIconDemo() {
    Navigator.pushNamed(context, "ImageIconDemo");
  }

  _goToSwitchCheckBoxDemo() {
    Navigator.pushNamed(context, "SwitchCheckBoxDemo");
  }

  _goToTextFormFieldDemo() {
    Navigator.pushNamed(context, "TextFormFieldDemo");
  }

  _goToProgressIndicator() {
    Navigator.pushNamed(context, 'ProgressIndicator');
  }

  _goToRowColumnDemo() {
    Navigator.pushNamed(context, "RowColumnDemo");
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
              style: Theme.of(context).textTheme.bodyText1),
            FlatButton(
              child: Text("Open new route"),
              onPressed: _goToNewRoute,
            ),
            FlatButton(
              child: Text("Open tips"),
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
              onPressed: _goToAssetsDemo,
            ),
            FlatButton(
              child: Text("StateManager demo"),
              onPressed: _goToStateManager,
            ),
            FlatButton(
              child: Text("TextStyle demo"),
              onPressed: _goToTextStyleDemo,
            ),
            FlatButton(onPressed: _goToButtonDemo, 
            child: Text("Button demo")),
            FlatButton(onPressed: _goToImageIconDemo, 
            child: Text("ImageIcon demo")),
            FlatButton(onPressed: _goToSwitchCheckBoxDemo, 
            child: Text("SwitchCheckBox demo")),
            FlatButton(onPressed: _goToTextFormFieldDemo, 
            child: Text("TextFormFieldDemo demo")),
            FlatButton(onPressed: _goToProgressIndicator,
              child: Text("ProgressIndicatorWidget")),
            FlatButton(onPressed: _goToRowColumnDemo,
            child: Text("RowColumnDemo")),
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
