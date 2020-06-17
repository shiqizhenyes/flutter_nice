import 'package:flutter/material.dart';
import 'package:nice/nine/strut_state/animated_image.dart';
import 'package:nice/nine/strut_state/grow_transition.dart';

class AnimatedImageDemo extends StatefulWidget {
  @override
  _AnimatedImageState createState() => _AnimatedImageState();
}

class _AnimatedImageState extends State<AnimatedImageDemo>
  with SingleTickerProviderStateMixin {

  Animation<double> _animation;
  AnimationController _controller;

  @override
  void initState() {

    _controller = AnimationController(duration: Duration(milliseconds: 3000),
        vsync: this);
    _animation = CurvedAnimation(parent: _controller, curve: Curves.bounceInOut);
    _animation = Tween(begin: 0.0, end: 300.0).animate(_controller);
    _controller.forward();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimatedImageDemo"),
      ),
      body: Center(
        child: GrowTransition(
          animation: _animation,
          child: Image.asset("assets/avatar.png"),
        )
      ),
    );
  }


}