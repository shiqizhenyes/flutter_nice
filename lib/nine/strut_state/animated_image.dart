
import 'package:flutter/material.dart';


class AnimatedImage extends AnimatedWidget {

  AnimatedImage({Key key, Animation<double> animation})
      : super(key: key, listenable: animation);

  ///Center(
  ///      child: Image.asset("assets/avatar.png",
  ///        width: animation.value,
  ///        height: animation.value,
  ///     )
  ///    );
  ///
  @override
  Widget build(BuildContext context) {
    final Animation<double> animation = this.listenable;
    return AnimatedBuilder(
        animation: animation,
        child: Image.asset("assets/avatar.png"),
        builder: (context, Widget child) {
          return Center(
            child: Container(
              width: animation.value,
              height: animation.value,
              child: child,
            ),
          );
        },
    );

  }


}