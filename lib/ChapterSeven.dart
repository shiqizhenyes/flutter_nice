import 'package:flutter/material.dart';
import 'package:nice/seven/future/future_demo.dart';
import 'package:nice/seven/stream/stream_demo.dart';

import 'seven/inherited/InheritedWidgetDemo.dart';
import 'seven/provider/ProviderDemo.dart';
import 'seven/theme/ThemeAndColorDemo.dart';
import 'seven/willScope/WillPopScopeDemo.dart';

/// 第七章 功能性组件
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
                FlatButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ThemeAndColorDemo();
                  }));
                }, child: Text("ThemeAndColorDemo")),
                FlatButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return FutureDemo();
                  }));
                }, child: Text("FutureDemo")),
                FlatButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return StreamDemo();
                  }));
                }, child: Text("StreamDemo"))
              ],
            )
          ],
        ),
      ),
    );
  }


}