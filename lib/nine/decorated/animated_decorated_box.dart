


import 'package:flutter/widgets.dart';

class AnimatedDecoratedBox extends StatefulWidget {

  AnimatedDecoratedBox({
    Key key,
    @required this.decoration,
    this.child,
    this.curve = Curves.linear,
    @required this.duration,
    this.reverseDuration
  });

  final BoxDecoration decoration;
  final Widget child;
  final Duration duration;
  final Curve curve;
  final Duration reverseDuration;

  @override
  _AnimatedDecoratedBoxState createState() => _AnimatedDecoratedBoxState();
}

class _AnimatedDecoratedBoxState extends State<AnimatedDecoratedBox>
    with SingleTickerProviderStateMixin {

  @protected
  AnimationController get controller => _controller;
  AnimationController _controller;

  Animation<double> get animation => _animation;
  Animation<double> _animation;

  DecorationTween _tween;


  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _animation,
        builder: (context, child) {
          print("AnimatedBuilder${_tween.animate(_animation).value}");
          return DecoratedBox(
            decoration: _tween.animate(_animation).value,
            child: child,
          );
        },
        child: widget.child,
    );
  }

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        duration: widget.duration,
        reverseDuration: widget.reverseDuration,
        vsync: this
    );
    _tween = DecorationTween(begin: widget.decoration);
    _updateCure();
  }

  void _updateCure() {
    if(widget.curve != null) {
      print("widget.curve is not null");
      _animation = CurvedAnimation(parent: _controller, curve: widget.curve);
    } else {
      _animation = _controller;
      print("widget.curve is null");
    }
  }

  @override
  void didUpdateWidget(AnimatedDecoratedBox oldWidget) {
    super.didUpdateWidget(oldWidget);
    if(widget.curve != oldWidget.curve) {
      print("didUpdateWidget");
      _updateCure();
      _controller.duration = widget.duration;
      _controller.reverseDuration = widget.reverseDuration;
      if(widget.decoration != (_tween.end ?? _tween.begin)) {
        _tween
          ..begin = _tween.evaluate(_animation)
          ..end = widget.decoration;
        _controller
          ..value = 0.0
          ..forward();
      }
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

}