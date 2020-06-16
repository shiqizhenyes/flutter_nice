
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

/// behavior
/// HitTestBehavior.deferToChild 只有控件所占区域可点击
/// HitTestBehavior.opaque 当前整个控件都可点击
/// AbsorbPointer 本身可以接收指针事件
/// IgnorePointer 不可以接收指针事件
/// 两者都可以阻止子widget接收指针事件
///
class PointerEventDemo extends StatefulWidget{

  @override
  State<StatefulWidget> createState() => _PointerEventState();

}

///
class _PointerEventState extends State<PointerEventDemo> {

  PointerEvent _event;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("PointerEventDemo"),
      ),
      body: Container(
        child: Center(
          child: Scrollbar(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Listener(
                      child: Container(
                        alignment: Alignment.center,
                        color: Colors.blue,
                        width: 300,
                        height: 150,
                        child: Text(_event?.toString()??"", style: TextStyle(color: Colors.white),),
                      ),
                      onPointerDown: (PointerEvent event) => this.setState(() => _event=event),
                      onPointerMove: (PointerEvent event) => this.setState(() => _event=event),
                      onPointerUp: (PointerEvent event) => this.setState(() => _event = event),
                    ),
                    Listener(
                      child: ConstrainedBox(
                        constraints: BoxConstraints.tight(Size(300.0, 150.0)),
                        child: Center(
                          child: Text("Box A"),
                        ),
                      ),
                      behavior: HitTestBehavior.opaque,
                      onPointerDown: (event) => print("down A" + Random.secure().nextInt(99999).toString()),
                    ),
                    Stack(
                      children: <Widget>[
                        Listener(
                          child: ConstrainedBox(
                            constraints: BoxConstraints.tight(Size(300.0, 200.0)),
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                color: Colors.blue,
                              ),
                            ),
                          ),
                          onPointerDown: (event) => print("down0"),
                        ),
                        Listener(
                          child: ConstrainedBox(
                            constraints: BoxConstraints.tight(Size(200.0, 100.0)),
                            child: Center(
                              child: Text("左上角200*100范围非文本区域点击"),
                            ),
                          ),
                          behavior: HitTestBehavior.opaque,
                          onPointerDown: (event) => print("down1"),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0, bottom: 200),
                      child: Listener(
                        child: IgnorePointer(
                          child: Listener(
                            child: Container(
                              width: 200.0,
                              height: 100.0,
                              color: Colors.red,
                            ),
                            onPointerDown: (event) =>
                                print("in: ${Random.secure().nextInt(9999)}"),
                          ),
                        ),
                        onPointerDown: (event) =>
                            print("out: ${Random.secure().nextInt(9999)}"),
                      ),
                    )
                  ],
                ),
              )
          )
        ),
      ),
    );
  }

}