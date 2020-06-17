
import 'package:flutter/material.dart';

class GrowTransition extends StatelessWidget {

  GrowTransition({this.animation, this.child});

  final Widget child;
  final Animation<double> animation;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
          animation: animation,
          builder: (context, child) {
            return Container(
              width: animation.value,
              height: animation.value,
              child: child,
            );
          },
        child: child,
      ),
    );
  }


}