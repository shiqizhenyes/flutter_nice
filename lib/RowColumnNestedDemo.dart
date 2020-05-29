
import 'package:flutter/material.dart';

/// 当Row 或Column嵌套时只有最外层的组件可以撑满，内部的组件只能最小空间
/// Expanded可以使嵌套的Row Column 组件撑满父布局
class RowColumnNestedDemo extends StatelessWidget {

  RowColumnNestedDemo({Key key}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RowColumnNestedDemo"),
      ),
      body: Container(
        color: Colors.green,
        child: Padding(
          padding: EdgeInsets.all(16.0), 
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Expanded(child: Container(
                color: Colors.red,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Text("Hi"),
                    Text("I am zack")
                  ],
                ),
              ))
            ],
          ),),
      ),
    );
  }

}