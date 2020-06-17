
import 'package:flutter/material.dart';
import 'package:nice/nine/page_route/fade_route.dart';
import 'package:nice/nine/page_route/fade_route_second.dart';

class FadeRouteDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _FadeRouteState();
}

class _FadeRouteState extends State<FadeRouteDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FadeRouteDemo"),
      ),
      body: Center(
        child: Container(
          color: Colors.white,
          child: FlatButton(onPressed: () {
            Navigator.push(context, FadeRoute(builder: (context) {
              return FadeRouteSecond();
            }));
          },
              child: Text("自定义路由动画")),
        ),
      ),
    );
  }


}