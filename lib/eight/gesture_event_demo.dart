import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class GestureEventDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _GestureEventState();
}

class _GestureEventState extends State<GestureEventDemo> {

  String _operation = "no gesture detected!";
  double _top = 0.0;
  double _left = 0.0;
  double _width = 300.0;
  TapGestureRecognizer _tapGestureRecognizer = TapGestureRecognizer();
  bool _toggle = false;
  double _topB = 0.0;
  double _leftB = 0.0;
  double _leftC = 0.0;


  @override
  void dispose() {
    super.dispose();
    _tapGestureRecognizer.dispose();
  }

  void _updateOperation(String operation) {
    setState(() {
      _operation = operation;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GestureEventDemo"),
      ),
      body: Container(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  child: Container(
                    color: Colors.blue,
                    width: 200.0,
                    height: 100.0,
                    alignment: Alignment.center,
                    child: Text(_operation, style: TextStyle(color: Colors.white),),
                  ),
                  onTap: () => this._updateOperation("tap"),
                  onDoubleTap: () => this._updateOperation("double tap"),
                  onLongPress: () => this._updateOperation("long press"),
                ),
                ConstrainedBox(
                  constraints: BoxConstraints.tight(Size(300.0, 150.0)),
                  child: Container(
                    margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
                    color: Colors.red,
                    child:  Stack(
                      children: <Widget>[
                        Positioned(
                            top: _top,
                            left: _left,
                            child: GestureDetector(
                              child: CircleAvatar(child: Text("A"),),
                              onPanDown: (e) {
                                print("press position ${e.globalPosition}");
                              },
                              onPanUpdate: (e) {
                                setState(() {
                                  _top += e.delta.dy;
                                  _left += e.delta.dx;
                                });
                              },
                              onPanEnd: (e) {
                                print("end speed: ${e.velocity}");
                              },
                            )
                        )
                      ],
                    ),
                  )
                ),
                Container(
                  child: GestureDetector(
                    child: Image.asset("assets/images/beach.jpg", width: _width,),
                    onScaleUpdate: (details) {
                      setState(() {
                        _width = 300 * details.scale.clamp(.2, 10.0);
                        print("image width: $_width");
                      });
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
                  width: 300.0,
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(text: "hello world"),
                        TextSpan(
                          text: "click change color",
                          style: TextStyle(
                            fontSize: 30.0,
                            color: _toggle ? Colors.blue: Colors.red),
                            ///及联调用
                            recognizer: _tapGestureRecognizer..onTap = () {
                              setState(() {
                                _toggle = !_toggle;
                              });
                            }
                        ),
                        TextSpan(text: "hello world")
                      ]
                    )
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
                  width: 300.0,
                  height: 150.0,
                  color: Colors.brown,
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        top: _topB,
                        left: _leftB,
                        child: GestureDetector(
                          child: CircleAvatar(child: Text("B"),),
                          onVerticalDragUpdate: (e) {
                            setState(() {
                              _topB += e.delta.dy;
                            });
                          },
                          onHorizontalDragUpdate: (e) {
                            setState(() {
                              _leftB += e.delta.dx;
                            });
                          },
                        )
                      )
                    ],
                  ),
                ),
                Container(
                  width: 300.0,
                  height: 150.0,
                  margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
                  color: Colors.teal,
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        top: 75,
                        left:_leftC,
                        child: GestureDetector(
                          child: CircleAvatar(child: Text("C"),),
                          onHorizontalDragUpdate: (e) {
                            setState(() {
                              _leftC += e.delta.dx;
                            });
                          },
                          onHorizontalDragEnd: (e) {
                            print("onHorizontalDragEnd");
                          },
                          onTapDown: (e) {
                            print("down");
                          },
                          onTapUp: (e) {
                            ///因为横向拖动手势在按下拖动后胜出，在拖动结束后，
                            ///由于tapUp和横向手势冲突，而之前横向拖动胜出，up 没有打印
                            print("up");
                          },
                        )
                      )
                    ],
                  ),
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}