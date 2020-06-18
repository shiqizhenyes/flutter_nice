
import 'package:flutter/material.dart';

class AnimatedSwitcherDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AnimatedSwitcherState();
}

class _AnimatedSwitcherState extends State<AnimatedSwitcherDemo> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimatedSwitcher"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedSwitcher(
              duration: Duration(milliseconds: 500),
              transitionBuilder: (child, animation) {
                return ScaleTransition(child: child, scale: animation);
              },
              child: Text(
                "$_count",
                key: ValueKey<int>(_count),
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            RaisedButton(onPressed: () {
              setState(() {
                _count +=1;
              });
            }, child: Text("+1"),)
          ],
        ),
      ),
    );
  }
}