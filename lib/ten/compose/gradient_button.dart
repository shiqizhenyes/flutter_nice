
import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {

  GradientButton({
  this.colors,
  this.width,
  this.height,
  this.borderRadius,
  this.onPressed,
  @required this.child});

  final List<Color> colors;
  final double width;
  final double height;
  final Widget child;
  final BorderRadius borderRadius;
  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    List<Color> _colors = colors ?? [themeData.primaryColor,
      themeData.primaryColorDark ?? themeData.primaryColor];
    return DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: colors),
          borderRadius: borderRadius,
        ),
      child: Material(
        type: MaterialType.transparency,
        child: InkWell(
          splashColor: colors.last,
          highlightColor: Colors.transparent,
          borderRadius: borderRadius,
          onTap: onPressed,
          child: ConstrainedBox(
            constraints: BoxConstraints.tight(Size(width, height)),
            child: Center(
              child: Padding(padding: const EdgeInsets.all(8.0),
              child: DefaultTextStyle(
                  style: TextStyle(fontWeight: FontWeight.bold),
                  child: child),
              ),
            ),
          ),
        ),
      ),
    );
  }


}