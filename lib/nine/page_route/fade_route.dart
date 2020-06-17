

import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';

class FadeRoute extends PageRoute {

  FadeRoute({this.builder, this.barrierColor, this.barrierLabel});

  final WidgetBuilder builder;

  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) => builder(context);

  @override
  Widget buildTransitions(BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {

    return CupertinoPageTransition(
        primaryRouteAnimation: animation,
        secondaryRouteAnimation: secondaryAnimation,
        child: child, linearTransition: false);
  }

  @override
  final Color barrierColor;

  @override
  final String barrierLabel;


//@override
//  // TODO: implement barrierColor
//  Color get barrierColor;
//
//  @override
//  // TODO: implement barrierLabel
//  String get barrierLabel;

  @override
  // TODO: implement maintainState
  bool get maintainState => true;

  @override
  // TODO: implement transitionDuration
  Duration get transitionDuration => const Duration(milliseconds: 1000);

}