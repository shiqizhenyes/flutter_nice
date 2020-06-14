
import 'package:flutter/material.dart';

import 'TapBoxC.dart';

class ParentCWidget extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _ParentCWidget();

}

class _ParentCWidget extends State<ParentCWidget> {

  bool _active = false;

  void _handleTapChanged(bool newValue) {
    setState(() {
      _active = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TapBoxC(
        active: _active,
        onChanged: _handleTapChanged,
      ),
    );
  }
}