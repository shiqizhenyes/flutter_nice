
import 'package:flutter/material.dart';
import 'package:nice/ten/compose_widget_demo.dart';
import 'package:nice/ten/custom_widget_demo.dart';

class ChapterTen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ChapterTen"),
      ),
      body: Wrap(
          children: <Widget>[
            FlatButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ComposeWidgetDemo();
              }));
            }, child: Text("Compose")),
            FlatButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return CustomWidgetDemo();
              }));
            }, child: Text("CustomWidget")),
          ],
        ),
    );
  }
}