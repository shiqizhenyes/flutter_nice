import 'package:flutter/material.dart';

class PaddingDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PaddingDemo"),
      ),
      body: Container(
        child: Column (
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  color: Colors.red,
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text("zack"),
                  ),
                ),
                Container(
                  color: Colors.green,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0.0, 16.0, 32.0, 64.0),
                    child: Text("zack"),
                  ),
                ),
                Container(
                  color: Colors.pink,
                  child: Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text("zack"),
                  ),
                ),
              ],
            )
          ],
        )
      ),
    );
  }


}