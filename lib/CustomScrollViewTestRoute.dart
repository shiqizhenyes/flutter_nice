import 'package:flutter/material.dart';

/// CustomScrollView是可以使用Sliver来自定义滚动模型（效果）的组件
class CustomScrollViewTestRoute extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Material(
      child: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text("CustomScrollViewDemo"),
              background: Image.asset("assets/images/beach.jpg", fit: BoxFit.cover,),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.all(8.0),
            sliver: SliverGrid(
              delegate: SliverChildBuilderDelegate((context, index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.cyan[100 * (index % 9)],
                  child: Text("grid items $index"),
                );
              },
              childCount: 20,
              ), 
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
                childAspectRatio: 4.0
              ),
            ), 
          ),
          SliverFixedExtentList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return Container(
                alignment: Alignment.center,
                color: Colors.lightBlue[100 * (index % 9)],
                child: Text("list item $index"),
              );
            },
            childCount: 50
            ), itemExtent: 50
          )
        ],
      ),
    );
  }

}