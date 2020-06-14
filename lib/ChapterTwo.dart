
import 'package:flutter/material.dart';

import 'AssetsDemo.dart';
import 'RouterDemo.dart';

///第二章 第一个flutter app

class ChapterTwo extends StatelessWidget {

  BuildContext context;

  _goToRouterDemo() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return RouterDemo();
    }));
  }

  _goToAssetsDemo() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AssetsDemo();
    }));
  }

  @override
  Widget build(BuildContext context) {
    this.context = context;
    return Scaffold(
      appBar: AppBar(
        title: Text("ChapterTwo"),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              children: <Widget>[
                FlatButton(onPressed: _goToRouterDemo, child: Text("Router")),
                FlatButton(onPressed: _goToAssetsDemo, child: Text("AssetsDemo"))
              ],
            ),
          ],
        ),
      ),
    ); 
  }

}


///
///
///
///// int _counter = 0;

  // void _incrementCounter() {
  //   setState(() {
  //     _counter++;
  //   });
  // }

  // void _goToNewRoute() {
    // Navigator.pushNamed(context, "newRoute");
//    Navigator.push(context, MaterialPageRoute(builder: (context) {
//      return NewRoute();
//    }));
  // }

  // _goToTips() async {
  //     var result = await Navigator.push(context, MaterialPageRoute(builder: (context) {
  //       return TipRoute(text: "route args",);
  //     }));
  //     print("返回结果 $result");
  // }

  // _goToAssetsDemo() {
  //   Navigator.pushNamed(context, "AssetsDemo");
  // }
    // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: Icon(Icons.add),
      // ), 
///
///
///
//////Text('You have pushed the button this many times:'),
            // Text(
            //   '$_counter',
            //   style: Theme.of(context).textTheme.bodyText1),
            // FlatButton(
            //   child: Text("Open new route"),
            //   onPressed: _goToNewRoute,
            // ),
            // FlatButton(
            //   child: Text("Open tips"),
            //   onPressed: _goToTips,
            // ),
            // Column(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: <Widget>[
            //     RandomWordsWidget(),
            //   ],
            // ),
            // FlatButton(
            //   child: Text("Assets demo"),
            //   onPressed: _goToAssetsDemo,
            // ),
///
///