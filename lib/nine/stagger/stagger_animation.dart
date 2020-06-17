import 'package:flutter/material.dart';

class StaggerAnimation extends StatelessWidget {

  StaggerAnimation({Key key, this.controller}) : super(key: key) {
    height = Tween<double>(begin: 0.0, end: 300.0)
        .animate(CurvedAnimation(
        parent: controller,
      curve: Interval(0.0, 0.6, curve: Curves.ease),
    ));

    color = ColorTween(begin: Colors.green, end: Colors.red)
      .animate(CurvedAnimation(parent: controller,
        curve: Interval(0.0, 0.6, curve: Curves.ease)));

    padding = Tween<EdgeInsets>(begin: EdgeInsets.only(left: 0.0),
        end: EdgeInsets.only(left: 100.0))
        .animate(CurvedAnimation(
        parent: controller, 
        curve: Interval(0.0, 1.0,curve: Curves.ease)
    ));

  }

  final Animation<double> controller;
  Animation<double> height;
  Animation<EdgeInsets> padding;
  Animation<Color> color;

  Widget _buildAnimation(BuildContext context, Widget child) {
    return Container(
      alignment: Alignment.bottomCenter,
      padding: padding.value,
      child: Container(
        color: color.value,
        width: 50.0,
        height: height.value,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: controller,
        builder: _buildAnimation
    );
  }
}