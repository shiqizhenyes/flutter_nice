import 'package:flutter/material.dart';
import 'package:nice/eight/event_bus_demo.dart';
import 'package:nice/eight/gesture_event_demo.dart';
import 'package:nice/eight/notification_demo.dart';
import 'package:nice/eight/pointer_event_demo.dart';

/// 第八章 事件 和 通知处理
class ChapterEight extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ChapterEight"),
      ),
      body: Container(
        child: Wrap(
          children: <Widget>[
            FlatButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return PointerEventDemo();
              }));
            }, child: Text("Pointer Event")),
            FlatButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return GestureEventDemo();
              }));
            }, child: Text("Gesture Event")),
            FlatButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return EventBusDemo();
              }));
            }, child: Text("EventBus")),
            FlatButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return NotificationDemo();
              }));
            }, child: Text("NotificationDemo")),
          ],
        ),
      ),
    );
  }

}