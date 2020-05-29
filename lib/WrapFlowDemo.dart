
import 'package:flutter/material.dart';

/// Wrap 流式布局 （常用）
/// Flow 性能更好，但是需要自定义（暂时不学）
class WrapFlowDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WrapFlowDemo"),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Wrap(
              alignment: WrapAlignment.start,
              spacing: 8.0,
              runSpacing: 4.0,
              children: <Widget>[
                Chip(label: Text("Hamilton"), avatar: CircleAvatar(backgroundColor: Colors.blue, child: Text("A"),),),
                Chip(label: Text("Lafayette"), avatar: CircleAvatar(backgroundColor: Colors.blue, child: Text("B"),),),
                Chip(label: Text("Mulligan"), avatar: CircleAvatar(backgroundColor: Colors.blue, child: Text("C"),),),
                Chip(label: Text("Laurens"), avatar: CircleAvatar(backgroundColor: Colors.blue, child: Text("D"),),)
              ],
            )
          ],
        ),
      ),
    );
  }

}