
import 'package:flutter/material.dart';
import 'package:flutternice/ContainerDemo.dart';
import 'package:flutternice/ContrainedBoxDemo.dart';
import 'package:flutternice/DecoratedBoxDemo.dart';
import 'package:flutternice/PaddingDemo.dart';
import 'package:flutternice/ScaffoldDemo.dart';
import 'package:flutternice/TransformDemo.dart';

/// 第五章容器类组件
class ChapterFive extends StatelessWidget {

BuildContext context;

_goToPaddingDemo() {
  Navigator.push(context, MaterialPageRoute(builder: (context) {
    return PaddingDemo();
  }));
}

_goToContrainedBoxDemo() {
  print("_goToContrainedBoxDemo");
  Navigator.push(context, MaterialPageRoute(builder: (context) {
    return ContrainedBoxDemo();
  }));
}

_goToDecoratedBoxDemo() {
  Navigator.push(context, MaterialPageRoute(builder: (context) {
    return DecoratedBoxDemo();
  }));
}

_goToTransformDemo() {
  Navigator.push(context, MaterialPageRoute(builder: (context) {
    return TransformDemo();
  }));
}

_goToContainerDemo() {
  Navigator.push(context, MaterialPageRoute(builder: (context){
    return ContainerDemo();
  }));
}

_goToScaffoldDemo() {
  Navigator.push(context, MaterialPageRoute(builder: (context) {
    return ScaffoldDemo();
  }));
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
            Row(
              children: <Widget>[
                FlatButton(
                  onPressed: _goToDecoratedBoxDemo, 
                  child: Text("DecoratedBoxDemo")
                ),
                FlatButton(
                  onPressed: _goToTransformDemo, 
                  child: Text("TransformDemo")
                ),
              ],
            ),
            Row(
              children: <Widget>[
                FlatButton(
                  onPressed: _goToContainerDemo, 
                  child: Text("ContainerDemo")
                ),
                FlatButton(
                  onPressed: _goToScaffoldDemo, 
                  child: Text("ScaffoldDemo")
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

}