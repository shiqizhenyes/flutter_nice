
import 'package:flutter/material.dart';
import 'package:nice/thirteen/international_demo.dart';

class ChapterThirteen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ChapterThirteen"),
      ),
      body: Wrap(
        children: <Widget>[
          FlatButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return InternationalDemo();
            }));
          }, child: Text("International"))
        ],
      ),
    );
  }

}