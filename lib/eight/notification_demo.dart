 import 'package:flutter/material.dart';
import 'package:nice/eight/utils/nice_notification.dart';

/// 通知
 /// 两个通知嵌套，如果返回false 表示不阻止冒泡
 ///
class NotificationDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _NotificationState();
}

class _NotificationState extends State<NotificationDemo> {

  String _msg = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("NotificationDemo"),
      ),
      body: NotificationListener<NiceNotification>(
        onNotification: (notification) {
          setState(() {
            _msg += notification.msg;
            print("outside: ${notification.msg}");
          });
          return true;
        },
          child: NotificationListener<NiceNotification> (
            onNotification: (notification) {
              setState(() {
                print("inside: ${notification.msg}");
//                _msg += notification.msg;
              });
              return false;
            },
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Builder(builder: (context) {
                    return RaisedButton(
                        child: Text("send notification"),
                        onPressed: () => NiceNotification(msg: "Hi")
                            .dispatch(context));
                  },),
                  Text(_msg),
                ],
              ),
            ),
          )
      ),
    );
  }

}