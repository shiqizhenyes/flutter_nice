
import 'package:flutter/material.dart';

/// 滚动控制器
class ScrollControllerDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ScrollControllerState();

}

class _ScrollControllerState extends State<ScrollControllerDemo> {


  ScrollController _scrollController;

  bool _showToTopButton = false;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(() {
      print("scroll offset " + _scrollController.offset.toString());
      if (_scrollController.offset < 1000 && _showToTopButton) {
        setState(() {
          _showToTopButton = false;
        });
      } else if (_scrollController.offset > 1000 && !_showToTopButton){
        setState(() {
          _showToTopButton = true;
        });
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ScrollControllerDemo"),
      ),
      body: Scrollbar(
        child: ListView.builder(
          itemCount: 100,
          controller: _scrollController,
          itemBuilder: (context, index) {
            return ListTile(title: Text("$index"),);
          },
        )
      ),
      floatingActionButton: !_showToTopButton ? null: FloatingActionButton(
        child: Icon(Icons.arrow_upward),
        onPressed: (){
          _scrollController.animateTo(.0, duration: Duration(milliseconds: 2000), curve: Curves.ease);
      }),
    );
  }


}