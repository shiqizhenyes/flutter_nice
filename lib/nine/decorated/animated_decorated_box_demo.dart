import 'package:flutter/material.dart';
import 'package:nice/nine/decorated/animated_decorated_box.dart';

class AnimatedDecoratedBoxDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AnimatedDecoratedBoxDemoState();

}

class _AnimatedDecoratedBoxDemoState extends State<AnimatedDecoratedBoxDemo> {

  Color _decoratedColor = Colors.blue;
  var duration = Duration(milliseconds: 2000);
  var curve;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimatedDecoratedBoxDemo"),
      ),
      body: Center(
        child: AnimatedDecoratedBox(
          decoration: BoxDecoration(color: _decoratedColor),
          duration: duration,
          curve: curve,
          child: FlatButton(onPressed: () {
            setState(() {
              curve = Curves.easeIn;
              _decoratedColor = Colors.red;
            });
          }, child: Text("AnimatedDecoratedBox",
            style: TextStyle(color: Colors.white),)),
        ),
      ),
    );
  }
}