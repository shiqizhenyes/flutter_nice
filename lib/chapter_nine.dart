import 'package:flutter/material.dart';
import 'package:nice/nine/hero/hero_a.dart';
import 'package:nice/nine/page_route/fade_route_demo.dart';
import 'package:nice/nine/stagger/stagger_demo.dart';
import 'package:nice/nine/strut_state/animation_strut_state_demo.dart';

class ChapterNine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ChapterNine"),
      ),
      body: Container(
        child: Wrap(
          children: <Widget>[
            FlatButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return AnimationStrutStateDemo();
              }));
            },
                child: Text("Strut & State"),
            ),
            FlatButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return FadeRouteDemo();
              }));
            },
              child: Text("Route"),
            ),
            FlatButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return HeroA();
              }));
            },
              child: Text("Hero"),
            ),
            FlatButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return StaggerDemo();
              }));
            },
              child: Text("Stagger"),
            ),
          ],
        ),
      ),
    );
  }

}