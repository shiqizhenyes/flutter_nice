import 'package:flutter/material.dart';
import 'package:nice/twelve/battery_level.dart';
import 'package:nice/twelve/platform_view_demo.dart';

class ChapterTwelve extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ChapterTwelve"),
      ),
      body: Container(
        child: Wrap(
          children: <Widget>[
            FlatButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return BatteryLevel();
              }));
            }, child: Text("Battery level")),
            FlatButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return PlatformViewDemo();
              }));
            }, child: Text("Platform View")),
          ],
        ),
      ),
    );
  }

}