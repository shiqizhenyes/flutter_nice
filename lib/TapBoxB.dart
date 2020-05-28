
import 'package:flutter/material.dart';

class TapBoxB extends StatelessWidget {

  TapBoxB({Key key, this.active : false, @required this.valueChanged}) : super(key : key);

  final bool active;
  final ValueChanged<bool> valueChanged;

  void _handlerTap() {
    valueChanged(!active);
  }

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: _handlerTap,
      child: Container(
        child: Center(
          child: Text(
            active ? "Active" : "Inactive",
            style: TextStyle(fontSize: 20.0, color: Colors.white),
          ),
        ),
        width: 100.0, height: 100.0,
          decoration: BoxDecoration(
            color: active ? Colors.green[700] : Colors.grey[600]
          ),
      ),
    );
  }


}
