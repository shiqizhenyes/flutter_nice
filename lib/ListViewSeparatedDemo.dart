
import 'package:flutter/material.dart';

/// 列表分割线
class ListViewSeparatedDemo extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {

    Widget dividerBlue = Divider(color: Colors.blue,);
    Widget dividerGreen = Divider(color: Colors.green);
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView Sseparated"),
      ),
      body: Scrollbar(
        child: ListView.separated(
          itemBuilder: (BuildContext context, int index) {
            return ListTile(title: Text("$index"),);
          }, 
          separatorBuilder: (BuildContext context, int index) {
            return index % 2 == 0 ? dividerBlue : dividerGreen;
          }, 
          itemCount: 100
          ),
      ),
    );
  }

}