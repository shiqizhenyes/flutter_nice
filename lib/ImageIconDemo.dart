import 'package:flutter/material.dart';

class ImageIconDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ImageIconDemo"), 
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image(image: AssetImage("assets/avatar.png"), width: 100.0,),
            Image.asset("assets/avatar.png", width: 100.0,),
            Image(image: NetworkImage("https://avatars2.githubusercontent.com/u/20411648?s=460&v=4"), 
            width: 100.0,),
            Image(image: AssetImage("assets/avatar.png"), width: 200.0, fit: BoxFit.fitWidth,),
          ],
        ),
      ),
    );
  }

}