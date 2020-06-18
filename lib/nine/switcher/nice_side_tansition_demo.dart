import 'package:flutter/material.dart';
import 'package:nice/nine/switcher/nice_side_transition.dart';

class NiceTransitionDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _NiceTransitionState();
}

class _NiceTransitionState extends State<NiceTransitionDemo> {

  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("NiceTransitionDemo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedSwitcher(
                duration: Duration(milliseconds: 300),
                transitionBuilder: (child, animation) {
                  var tween = Tween<Offset>(begin: Offset(1, 0), end: Offset(0, 0));
                  return NiceSideTransition(
                    position: tween.animate(animation),
                    child: child,
                  );
                },
                child: Text(
                  "$_count",
                  key: ValueKey(_count),
                  style: Theme.of(context).textTheme.headline4,
                )
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