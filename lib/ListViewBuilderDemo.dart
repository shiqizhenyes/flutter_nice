import 'package:flutter/material.dart';

class ListViewBuilderDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView Builder"),
      ),
      body: Scrollbar(
        child: ListView.builder(
          itemCount: 100,
          itemExtent: 50.0,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(title: Text("$index"),);
          }
        )
      ),
    );
  }

}