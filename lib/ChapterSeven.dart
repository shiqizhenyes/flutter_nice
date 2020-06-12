import 'package:flutter/material.dart';
import 'package:flutternice/InheritedWidgetDemo.dart';
import 'package:flutternice/ProviderDemo.dart';
import 'package:flutternice/WillPopScopeDemo.dart';

class ChapterSeven extends StatelessWidget {

  ChapterSeven({Key key}): super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ChapterSeven"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Wrap(
              children: <Widget>[
                FlatButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return WillPopScopeDemo();
                  }));
                }, child: Text("WillPopScope")),
                FlatButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return InheritedWidgetDemo();
                  }));
                }, child: Text("InheritedWidgetDemo")),
                FlatButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ProviderDemo();
                  }));
                }, child: Text("ProviderDemo")),
              ],
            )
          ],
        ),
      ),
    );
  }


}