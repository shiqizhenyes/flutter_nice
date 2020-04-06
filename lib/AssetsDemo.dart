
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AssetsDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar (
        title: Text("AssetsDemo"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset("assets/learn_to_value.jpg")
        ],
      ),
    );
  }
  
}