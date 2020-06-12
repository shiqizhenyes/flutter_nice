
import 'package:flutter/material.dart';


/// 固定列表头
class ListPinTitle extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListPinTitle"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            ListTile(
              title: Text("固定列表头"),
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(title: Text("$index"));
                },
                itemCount: 1000,
              )
            )
          ],
        ),
      ),
    );
  }

}

// class _ListPinTitleState extends State {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold();
//   }

// }