
import 'package:flutter/material.dart';
import 'package:flutternice/TapBoxB.dart';

class ParentWidget extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _ParentWidgetState();

}

class _ParentWidgetState extends State<ParentWidget> {

  bool _active = false;

  void _handleBoxStateChange(bool newValue) {
    setState(() {
      _active = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: TapBoxB(
          active: _active,
          valueChanged: _handleBoxStateChange,
        ),
      ),
    );
  }

}