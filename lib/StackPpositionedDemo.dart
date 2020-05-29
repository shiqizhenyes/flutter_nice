import 'package:flutter/material.dart';

///层叠布局
class StackPpositionedDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("StackPpositionedDemo"),
      ),
      body: ConstrainedBox(
        constraints: BoxConstraints.expand(),
        child: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            Container(
              child: Text("hello world", style: TextStyle(color: Colors.white),),
              color: Colors.red,
            ),
            Positioned(
              left: 18.0,
              child: Text("left")
            ),
            Positioned(
              top: 18.0,
              child: Text("top"),
            ),
            Positioned(
              right: 18.0,
              child: Text("right"),
            ),
            Positioned(
              bottom: 18.0,
              child: Text("bottom"),
            )
          ],
        ),
      ),
    );
  }

}