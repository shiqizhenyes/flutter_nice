
import 'package:flutter/material.dart';
import 'package:nice/nine/switcher/nice_side_transition_x.dart';

class NiceSideTransitionXDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _NiceSideTransitionXState();
}

class _NiceSideTransitionXState extends State<NiceSideTransitionXDemo> {

  int _count = 0;

  @override
  Widget build(Object context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("NiceSideTransitionXDemo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedSwitcher(
              duration: Duration(milliseconds: 300),
              transitionBuilder: (child, animation) {
                return NiceSideTransitionX(
                  position: animation,
                  direction: AxisDirection.down,
                  child: child,
                );
              },
              child: Text(
                "$_count",
                key: ValueKey(_count),
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            RaisedButton(onPressed: () {
              setState(() {
                _count += 1;
              });
            }, child: Text("+1"),)
          ],
        ),
      ),
    );
  }

}