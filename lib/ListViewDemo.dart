import 'package:flutter/material.dart';
import 'package:flutternice/InfiniteListView.dart';
import 'package:flutternice/ListViewBuilderDemo.dart';
import 'package:flutternice/ListViewDefaultDemo.dart';
import 'package:flutternice/ListViewSeparatedDemo.dart';

class ListViewDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListViewDemo"),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: <Widget>[
              FlatButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ListViewDefaultDemo();
                }));
              }, child: Text("Default")),
              FlatButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ListViewBuilderDemo();
                }));
              }, child: Text("builder")),
              FlatButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ListViewSeparatedDemo();
                }));
              }, child: Text("separated")),
              FlatButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return InfiniteListView();
                }));
              }, child: Text("InfiniteListView"))
            ],
          ),
        ),
      )
    );
  }

}