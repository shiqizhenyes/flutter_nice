import 'package:flutter/material.dart';
import 'package:nice/ten/custom/go_bang.dart';

class CustomWidgetDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CustomWidgetDemo"),
      ),
      body: Center(
        child: CustomPaint(
          size: Size(300, 300),
          painter: GoBang(),
        ),
      ),
    );
  }
}