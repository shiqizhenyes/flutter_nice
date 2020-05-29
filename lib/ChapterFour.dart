
import 'package:flutter/material.dart';
import 'package:flutternice/FlexDemo.dart';
import 'package:flutternice/RowColumnDemo.dart';

///第四章 布局组件
class ChapterFour extends StatelessWidget {

  BuildContext context;

  _goToRowColumnDemo() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return RowColumnDemo();
    }));
  }

  _goToFlexDemo() {
     Navigator.push(context, MaterialPageRoute(builder: (context) {
      return FlexDemo();
    }));
  }

  @override
  Widget build(BuildContext context) {
    this.context = context;
    return Scaffold(
      appBar: AppBar(
        title: Text("ChapterFour"),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                FlatButton(
                  onPressed: _goToRowColumnDemo, 
                  child: Text("RowColumnDemo")
                ),
                FlatButton(
                  onPressed: _goToFlexDemo, 
                  child: Text("FlexDemo")
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

}