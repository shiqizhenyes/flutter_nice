import 'package:flutter/material.dart';
import 'package:nice/nine/decorated/nice_animated_decorated_box.dart';

class NiceAnimatedDecoratedBoxDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _NiceAnimatedDecoratedBoxState();
}

class _NiceAnimatedDecoratedBoxState
    extends State<NiceAnimatedDecoratedBoxDemo> {

  Color _color = Colors.blue;
  var duration = Duration(milliseconds: 2000);
  var _curve = Curves.linear;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("NiceAnimatedDecoratedBoxDemo"),
        ),
        body: Center(
          child: NiceAnimatedDecoratedBox(
            decoration: BoxDecoration(
              color: _color,
            ),
            curve: _curve,
            duration: duration,
            child: FlatButton(
              onPressed: () {
                setState(() {
                  _color = Colors.red;
                  _curve = Curves.bounceIn;
                });
              },
              child: Text("NiceAnimatedDecoratedBox",
                  style: TextStyle(color: Colors.white)),
            ),
          ),
        ));
  }
}
