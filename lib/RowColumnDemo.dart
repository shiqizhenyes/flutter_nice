
import 'package:flutter/material.dart';

import 'RowColumnNestedDemo.dart';

class RowColumnDemo extends StatelessWidget {

  BuildContext context;

  _goToRowColumnNestedDemo() {
    print("go To RowColumnNestedDemo");
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return RowColumnNestedDemo();
    }));
  }

  @override
  Widget build(BuildContext context) {
    this.context = context;
    return Scaffold(
      appBar: AppBar(
        title: Text("RowColumnDemo"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text("hello world!"),
              Text("I am zack")
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("hello world!"),
              Text("I am zack")
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text("hello world!"),
              Text("I am zack")
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            verticalDirection: VerticalDirection.up,
            children: <Widget>[
              Text("hello world!", style: TextStyle(fontSize: 32.0),),
              Text("I am zack")
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text("Hi"),
              Text("I am zack")
            ],
          ),
          FlatButton(onPressed: _goToRowColumnNestedDemo, child: Text("RowColumnNestedDemo"))
        ],
      ),
    );
  }
}