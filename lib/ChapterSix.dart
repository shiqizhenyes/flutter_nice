import 'package:flutter/material.dart';
import 'package:flutternice/CustomScrollViewTestRoute.dart';
import 'package:flutternice/GridViewDemo.dart';
import 'package:flutternice/ListViewDemo.dart';
import 'package:flutternice/ScrollControllerDemo.dart';
import 'package:flutternice/ScrollProgressDemo.dart';
import 'package:flutternice/SingleChildScrollViewDemo.dart';

///第六章可滚动组件
class ChapterSix extends StatelessWidget {

  ChapterSix({Key key}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ChapterSix"),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Wrap(
              children: <Widget>[
                FlatButton(child: Text("SingleChildScrollViewDemo") ,onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return SingleChildScrollViewDemo();
                  }));
                }), 
                FlatButton(child: Text("ListViewDemo"), onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ListViewDemo();
                  }));
                }),
                FlatButton(child: Text("GridViewDemo"), onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return GridViewDemo();
                  }));
                }),
                FlatButton(child: Text("CustomScrollViewTestRoute"), onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return CustomScrollViewTestRoute();
                  },));
                }),
                FlatButton(child: Text("ScrollControllerDemo"), onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ScrollControllerDemo();
                  }));
                }),
                FlatButton(child: Text("ScrollProgressDemo"), onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return ScrollProgressDemo();
                  }));
                })

              ]
            )
          ]
        )
      ),
    );
  }


}