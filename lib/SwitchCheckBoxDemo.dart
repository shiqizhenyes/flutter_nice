import 'package:flutter/material.dart';

class SwitchCheckBoxDemo extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _SwitchCheckBoxState();

}

class _SwitchCheckBoxState extends State<SwitchCheckBoxDemo> {

  bool _switchSelected = true;
  bool _checkBoxSelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SwitchCheckBoxDemo"),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Switch(value: this._switchSelected, onChanged: (value) {
              setState(() {
                _switchSelected = value;
              });
            }),
            Checkbox(value: this._checkBoxSelected, onChanged: (value) {
              setState(() {
                _checkBoxSelected = value;
              });
            })
          ],
        ),
      ),
    );
  }

}
