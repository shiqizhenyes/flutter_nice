
import 'package:flutter/material.dart';

import 'ClipDemo.dart';
import 'ContainerDemo.dart';
import 'ContrainedBoxDemo.dart';
import 'DecoratedBoxDemo.dart';
import 'PaddingDemo.dart';
import 'ScaffoldDemo.dart';
import 'TransformDemo.dart';

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

_goToClipDemo() {
  Navigator.push(context, MaterialPageRoute(builder: (context){
    return ClipDemo();
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
            Row(
              children: <Widget>[
                FlatButton(
                  onPressed: _goToClipDemo, 
                  child: Text("ClipDemo")
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

}