import 'package:flutter/widgets.dart';

///有 bug 和flutter实战的效果不一致
///
class NiceAnimatedDecoratedBox extends ImplicitlyAnimatedWidget {

  NiceAnimatedDecoratedBox({
    Key key,
    @required this.decoration,
    this.child,
    Curve curve = Curves.linear,
    @required Duration duration,
  }): super(key: key,
      curve: curve,
      duration: duration,
  );

  final BoxDecoration decoration;
  final Widget child;

  @override
  _NiceAnimatedDecoratedBoxState createState() => _NiceAnimatedDecoratedBoxState();
}

class _NiceAnimatedDecoratedBoxState
    extends ImplicitlyAnimatedWidgetState<NiceAnimatedDecoratedBox> {

  DecorationTween _decorationTween;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: _decorationTween.evaluate(animation),
      child: widget.child,
    );
  }

  @override
  void forEachTween(context) {
    _decorationTween = context(_decorationTween, widget.decoration,
            (value) => DecorationTween(begin: value));
  }

}