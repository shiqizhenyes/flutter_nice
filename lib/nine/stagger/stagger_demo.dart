
import 'package:flutter/material.dart';
import 'package:nice/nine/stagger/stagger_animation.dart';

class StaggerDemo extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _StaggerState();
}

class _StaggerState extends State<StaggerDemo>
    with SingleTickerProviderStateMixin {

  AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
        duration: Duration(milliseconds: 2000),
        vsync: this);
    super.initState();
  }

  Future<Null> _playAnimation() async {
    try {
      await _controller.forward().orCancel;
      await _controller.reverse().orCancel;
    }on TickerCanceled {

    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("StaggerDemo"),
      ),
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
          child: Center(
            child: Container(
              width: 300.0,
              height: 300.0,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.1),
                border: Border.all(color: Colors.black.withOpacity(0.5))
              ),
              child: StaggerAnimation(controller: _controller,),
            ),
          ),
        onTap: () {
          _playAnimation();
        },
      )
    );
  }
}