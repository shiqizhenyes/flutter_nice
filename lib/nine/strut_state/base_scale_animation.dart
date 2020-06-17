import 'package:flutter/material.dart';

class BaseScaleAnimation extends StatefulWidget {
  @override
  _BaseScaleAnimationState createState() => _BaseScaleAnimationState();
}

class _BaseScaleAnimationState extends State<BaseScaleAnimation>
    with SingleTickerProviderStateMixin {

  Animation<double> _animation;
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration: const Duration(milliseconds: 800),
        vsync: this);
    _animation = CurvedAnimation(parent: _controller, curve: Curves.easeInOut);
    _animation = Tween(begin: 0.0, end: 300.0)
        .animate(_controller)..addListener(() {
          setState(() {});
    });
    _controller.forward();

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
        title: Text("BaseScaleAnimation"),
      ),
      body: Center(
        child: Image.asset("assets/avatar.png",
          width: _animation.value, height: _animation.value,),
      ),
    );
  }

}