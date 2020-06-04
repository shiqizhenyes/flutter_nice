import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class InfiniteListView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => InfiniteListViewState();
}

class InfiniteListViewState extends State<InfiniteListView> {

  static const loadingTag = "##loading##";
  var _words = <String>[loadingTag];


  _retrieveData() {
    Future.delayed(Duration(seconds: 2)).then((value) {
      setState(() {
        _words.insertAll(_words.length - 1, generateWordPairs().take(20).map((e) => e.asPascalCase).toList());
      });
    });
  }

  @override
  void initState() {
    super.initState();
    _retrieveData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("InfiniteListViewState"),
      ),
      body: Scrollbar(
        child: ListView.separated(
          itemBuilder: (context, index) {
            if (_words[index] == loadingTag) {
              if (_words.length - 1 < 100) {
                _retrieveData();
                return Container(
                  padding: const EdgeInsets.all(16.0),
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: 24.0,
                    height: 24.0,
                    child: CircularProgressIndicator(strokeWidth: 2.0,),
                  ),
                );
              } else {
                return Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(16.0),
                  child: Text("没有更多了", style: TextStyle(color: Colors.grey),),
                );
              }
            }
            return ListTile(title: Text(_words[index]),);
          }, 
          separatorBuilder: (context, index) => Divider(height: 4,), 
          itemCount: _words.length
        )
      ),
    );
  }

}