import 'package:flutter/material.dart';


/// 滚动监听和控制
class ScrollProgressDemo extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _ScrollProgressState();

}

class _ScrollProgressState extends State<ScrollProgressDemo> {

  String _progress = "0%";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ScrollProgressDemo"),
      ),
      body: NotificationListener<ScrollNotification>(
        onNotification: (notification) {
          double progress = notification.metrics.pixels / notification.metrics.maxScrollExtent;
          setState(() {
            var progressInt = (progress * 100).toInt();
            if (0 <= progressInt && progressInt<= 100) {
              _progress = "$progressInt%";
            }
          });
          return true;
        },
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            ListView.builder(
              itemCount: 100,
              itemExtent: 50,
              itemBuilder: (context, index) {
                return ListTile(title: Text("$index"),
              );
            }
            ),
            CircleAvatar(
              radius: 30.0,
              child: Text(_progress),
              backgroundColor: Colors.black54,
            )
          ],
        )
      ),
    );
  }

}