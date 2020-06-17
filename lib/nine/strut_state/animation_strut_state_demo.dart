import 'package:flutter/material.dart';
import 'package:nice/nine/strut_state/animated_image_demo.dart';
import 'package:nice/nine/strut_state/base_scale_animation.dart';

class AnimationStrutStateDemo extends StatefulWidget {
  @override
  _AnimationStrutStateState createState() => _AnimationStrutStateState();
}

class _AnimationStrutStateState extends State<AnimationStrutStateDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimationStrutStateDemo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return BaseScaleAnimation();
              }));
            },
                child: Text("Base Scale")
            ),
            FlatButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return AnimatedImageDemo();
              }));
            },
              child: Text("Animated Image"),
            )
          ],
        ),
      ),
    );
  }
}

