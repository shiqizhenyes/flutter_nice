import 'dart:math' as math;
import 'package:flutter/material.dart';

///变换
class TransformDemo extends StatelessWidget {

  final Widget skewY = Container(
  color: Colors.black,
  child: Transform (
      transform: Matrix4.skewY(0.3),
      alignment: Alignment.topRight,
      child: Container(
        color: Colors.red,
        padding: EdgeInsets.all(8.0),
        child: Text("Apartment for rent!"),
      ),
    )
  );

  final Widget offSet = DecoratedBox(
    decoration: BoxDecoration(
      color: Colors.red,
    ),
    child: Transform.translate(
      offset: Offset(-20, -5),
      child: Text("Hello world"),
      ),
  );

  final Widget angle = DecoratedBox(
    decoration: BoxDecoration(
      color: Colors.red,
    ),
    child: Transform.rotate(
      angle: math.pi / 2, 
      child: Text("Hello world"),
    ),);

final Widget scale = DecoratedBox(
  decoration: BoxDecoration(
    color: Colors.red,
  ),
  child: Transform.scale(
    scale: 1.5, 
    child: Text("Hello world"),
    ),
  );


 final Widget example = Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[
    DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.red,
      ),
      child: Transform.scale(
        scale: 1.5,
        child: Text("hello world"),
      ),
    ),
    Text("你好", style: TextStyle(color: Colors.green, fontSize: 18.0),)
  ],
);

 final Widget rotatedBox = Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[
    DecoratedBox(
      decoration: BoxDecoration(color: Colors.red),
      child: RotatedBox(
        quarterTurns: 1,
        child: Text("hello world"),
        ),
      ),
      Text("你好", style: TextStyle(color: Colors.green, fontSize: 18.0)),
  ],
);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TransformDemo"),
      ),
      body: Center(
        child: this.rotatedBox,
      ),
    );
  }

}