import 'package:flutter/material.dart';

class TipRoute extends StatelessWidget {

  final String text;

  TipRoute({Key key, @required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tips"),
      ),
      body: Padding(
        padding: EdgeInsets.all(18),
        child: Center(
          child: Column(
            children: <Widget>[
              Text(this.text),
              RaisedButton(
                onPressed: ()=> Navigator.pop(context, "return value"),
                child: Text("return"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}