
import 'package:flutter/material.dart';

import 'InfiniteGridView.dart';

///  网格控件
class GridViewDemo extends StatelessWidget {


  static final List<Widget> icons = [
    Icon(Icons.airport_shuttle),
    Icon(Icons.all_inclusive),
    Icon(Icons.beach_access),
    Icon(Icons.cake),
    Icon(Icons.free_breakfast),
  ];

/// 默认grid
  final gridDefaultFixed = GridView(
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 3,
      childAspectRatio: 1
    ),
    children: icons,
  );

/// GridView.count构造函数内部使用了SliverGridDelegateWithFixedCrossAxisCount
  final gridCount = GridView.count(
    crossAxisCount: 3,
    childAspectRatio: 1,
    children: icons,
  );

  final gridDefaultMax = GridView(
    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
      maxCrossAxisExtent: 200.0,
      childAspectRatio: 2,
    ),
    children: icons,
  );

  final gridExtent = GridView.extent(
    maxCrossAxisExtent: 200.0,
    childAspectRatio: 2,
    children: icons,  
  );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridViewDemo"),
      ),
      body: Container(
        child: Wrap(
          children: <Widget>[
            FlatButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return InfiniteGridView();
              }));
            }, child: Text("InfiniteGridView"))
          ],
        )
      ),
    );
  }
}