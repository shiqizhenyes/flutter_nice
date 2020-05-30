import 'package:flutter/material.dart';


class ContrainedBoxDemo extends StatelessWidget {

  Widget redBox = DecoratedBox(decoration: BoxDecoration(color: Colors.red));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ContrainedBoxDemo"),
        actions: <Widget>[
          UnconstrainedBox(
            child: Padding(
              padding: EdgeInsets.only(right: 16.0),
              child: SizedBox(
                width: 20,
                height: 20,
                child: CircularProgressIndicator(
                  strokeWidth: 3,
                  valueColor: AlwaysStoppedAnimation(Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Container(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: 50.0,
                minWidth: double.infinity,
                maxHeight: 100.0
              ),
              child: Container(
                height: 0.0,
                child: redBox,
              ),
            ),
          ),
          SizedBox(
            height: 50,
            width: 50,
            child: redBox,
          ),
          ConstrainedBox(
            constraints: BoxConstraints(
              minWidth: 60.0,
              minHeight: 100.0,
              ),
            child: UnconstrainedBox(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minWidth: 90.0,
                  minHeight: 20.0,
                ),
                child: redBox,
              ),
            ),
          )
        ],
      )
    );
  }

}