
import 'package:flutter/material.dart';
import 'package:flutternice/AlignDemo.dart';
import 'package:flutternice/FlexDemo.dart';
import 'package:flutternice/RowColumnDemo.dart';
import 'package:flutternice/StackPpositionedDemo.dart';
import 'package:flutternice/WrapFlowDemo.dart';

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

  _goToWrapFlowDemo() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return WrapFlowDemo();
    }));
  }

  _goToStackPositionedDemo() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return StackPpositionedDemo();
    }));
  }

  _goToAlgnDemo() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AlignDemo();
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
            ),
            Row(
              children: <Widget>[
                FlatButton(
                  onPressed: _goToWrapFlowDemo, 
                  child: Text("WrapFlowDemo")
                ),
                FlatButton(
                  onPressed: _goToStackPositionedDemo, 
                  child: Text("StackPositionedDemo")
                ),
              ],
            ),
            Row(
              children: <Widget>[
                FlatButton(
                  onPressed: _goToAlgnDemo, 
                  child: Text("AlignDemo")
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

}