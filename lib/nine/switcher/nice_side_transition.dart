
import 'package:flutter/widgets.dart';

class NiceSideTransition extends AnimatedWidget {

  NiceSideTransition({Key key, @required Animation<Offset> position,
    this.transformHitTests = true, this.child}):
        super(key: key, listenable: position);

  Animation<Offset> get position => listenable;

  final bool transformHitTests;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    Offset offset = position.value;
    ///反转x 轴偏移
    if (position.status == AnimationStatus.reverse) {
      offset = Offset(-offset.dx, offset.dy);
    }
    return FractionalTranslation(
      translation: offset,
      child: child,
      transformHitTests: transformHitTests,
    );
  }

}

