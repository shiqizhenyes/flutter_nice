import 'package:flutter/material.dart';

class InfiniteListView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => InfiniteListViewState();
}

class InfiniteListViewState extends State<InfiniteListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("InfiniteListViewState"),
      ),
    );
  }

}