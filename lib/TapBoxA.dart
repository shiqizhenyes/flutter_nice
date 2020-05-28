
import 'package:flutter/material.dart';

class TapBoxA extends StatefulWidget {

  TapBoxA({Key key}) : super(key : key);

  @override
  State<StatefulWidget> createState() => new _TapBoxAState();

}

class _TapBoxAState extends State<TapBoxA> {

  bool _active = false;

  void _handleTap() {
    setState(() {
      _active = !_active;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: _handleTap,
      child: new Container(
        child: Center(
          child: Text(
            _active ? "Active" : "Inactive",
            style: new TextStyle(fontSize: 20.0, color: Colors.white),),
        ),
        width: 100.0, height: 100.0,
        decoration: new BoxDecoration(
          color: _active ? Colors.lightGreen[700] : Colors.grey[600]
        ),
      ),
    );
  }

}