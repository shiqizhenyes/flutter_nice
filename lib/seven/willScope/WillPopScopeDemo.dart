import 'package:flutter/material.dart';

/// 返回拦截
class WillPopScopeDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _WillPopScopeState();
}

class _WillPopScopeState extends State<WillPopScopeDemo> {

  DateTime _lastPressAt;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WillPopScopeDemo"),
      ),
      body: WillPopScope(
        child: Container(
          alignment: Alignment.center,
          child: Text("1秒内连续点击两次返回键退出"),
        ), 
        onWillPop: () async {
          print("点击返回按钮");
          if (_lastPressAt == null || DateTime.now().difference(_lastPressAt) > Duration(seconds: 1)) {
              _lastPressAt = DateTime.now();
            return false;
          }
          return true;
        }
      ),
    );
  }


}