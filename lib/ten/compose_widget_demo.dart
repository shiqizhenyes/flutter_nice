import 'package:flutter/material.dart';
import 'package:nice/ten/compose/gradient_button.dart';

class ComposeWidgetDemo extends StatelessWidget {
  
  final colors = [Colors.red, Colors.orange];
  
  @override
  Widget build(Object context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ComposeWidgetDemo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GradientButton(
              width: 300.0,
              height: 50.0,
              child: Text("GradientButton"),
              colors: colors,
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              onPressed: () {

              },
            )
          ],
        ),
      ),
    );
  }
}