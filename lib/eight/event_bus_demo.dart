import 'dart:math';

import 'package:flutter/material.dart';
import 'package:nice/eight/utils/event_bus.dart';

/// 事件总线
class EventBusDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _EventBusState();
}

class _EventBusState extends State<EventBusDemo> {

  String _state = "no login";

  _EventBusState() {
    bus.on("login", (arg) {
      setState(() {
        _state = arg;
      });
    });
  }


  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    bus.off("login", (arg) {
      print("移除 $arg");
    });
  }

  @override
  void didUpdateWidget(EventBusDemo oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      appBar: AppBar(
        title: Text("EventBusDemo"),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(_state),
              FlatButton(onPressed: () {
                bus.emit("login", "zack login ${Random.secure().nextInt(90000)}");
              }, child: Text("login"))
            ],
          ),
        ),
      ),
    );
  }

}