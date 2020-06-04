import 'package:flutter/material.dart';

class SingleChildScrollViewDemo extends StatelessWidget {
  
  final String str = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SingleChildScrollViewDemo"),
      ),
      body: Scrollbar(child: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: str.split("").map((e) => Text(e, style: TextStyle(fontSize: 20))).toList(),
        ),
        )
      )),
    );
  }

}