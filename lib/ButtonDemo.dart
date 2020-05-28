import 'package:flutter/material.dart';

class ButtonDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Button demo")
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row (
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                RaisedButton(child: Text("RaisedButton"), onPressed: () {}), 
                FlatButton(onPressed: () {}, child: Text("FlatButton")),
                OutlineButton(onPressed: () {}, child: Text("OutlineButton"),),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                RaisedButton.icon(icon: Icon(Icons.send), label: Text("send"), onPressed: () {}),
                OutlineButton.icon(icon: Icon(Icons.add), label: Text("add"), onPressed: () {}),
                FlatButton.icon(onPressed: (){}, icon: Icon(Icons.info), label: Text("详情")),
              ],
            ),
            IconButton(icon: Icon(Icons.thumb_up), onPressed: () {}),
          ],
        ),
     
      ),
    );
  }



}

