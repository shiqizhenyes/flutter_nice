import 'package:flutter/material.dart';

///对齐与相对定位
class AlignDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AlignDemo"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              width: 200.0,
              height: 200.0,
              color: Colors.blue[200],
              child: Align(
                alignment: Alignment.bottomLeft,
                child: FlutterLogo(
                  size: 60,
                ),
              ),
            ),
            Container(
              color: Colors.red[200],
              child:   Align(
                widthFactor: 3.35,
                heightFactor: 3.35,
                alignment: Alignment.topRight,
                child: FlutterLogo(
                  size: 60,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

}