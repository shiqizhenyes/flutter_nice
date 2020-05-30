
import 'package:flutter/material.dart';
import 'package:flutternice/PaddingDemo.dart';

/// 第五章容器类组件
class ChapterFive extends StatelessWidget {

BuildContext context;

_goToPaddingDemo() {
  Navigator.push(context, MaterialPageRoute(builder: (context) {
    return PaddingDemo();
  }));
}

_goToContrainedBoxDemo() {

}

  @override
  Widget build(BuildContext context) {
    this.context = context;
    return Scaffold(
      appBar: AppBar(
        title: Text("ChapterFive"),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                FlatButton(
                  onPressed: _goToPaddingDemo, 
                  child: Text("PaddingDem")
                ),
                FlatButton(
                  onPressed: _goToContrainedBoxDemo, 
                  child: Text("ContrainedBoxDemo")
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

}