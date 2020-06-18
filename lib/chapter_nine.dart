import 'package:flutter/material.dart';
import 'package:nice/nine/decorated/animated_decorated_box_demo.dart';
import 'package:nice/nine/decorated/nice_animated_decorated_box_demo.dart';
import 'package:nice/nine/hero/hero_a.dart';
import 'package:nice/nine/page_route/fade_route_demo.dart';
import 'package:nice/nine/stagger/stagger_demo.dart';
import 'package:nice/nine/strut_state/animation_strut_state_demo.dart';
import 'package:nice/nine/switcher/animated_switcher_demo.dart';
import 'package:nice/nine/switcher/nice_side_tansition_demo.dart';
import 'package:nice/nine/switcher/nice_side_transition_x_demo.dart';

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
            FlatButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return AnimatedSwitcherDemo();
              }));
            },
              child: Text("AnimatedSwitcher"),
            ),
            FlatButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return NiceTransitionDemo();
              }));
            },
              child: Text("NiceTransition"),
            ),
            FlatButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return NiceSideTransitionXDemo();
              }));
            },
              child: Text("NiceSideTransitionX"),
            ),
            FlatButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return AnimatedDecoratedBoxDemo();
              }));
            },
              child: Text("AnimatedDecoratedBox"),
            ),
            FlatButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return NiceAnimatedDecoratedBoxDemo();
              }));
            },
              child: Text("NiceAnimatedDecoratedBox"),
            ),
          ],
        ),
      ),
    );
  }

}