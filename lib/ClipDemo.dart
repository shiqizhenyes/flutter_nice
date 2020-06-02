import 'package:flutter/material.dart';

class ClipDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget avatar = Image.asset("assets/avatar2.jpg", scale: 6,);
    return Scaffold(
      appBar: AppBar(
        title: Text("ClipDemo"),
      ),
      body: Container(
        color: Colors.black,
        child: Center(
          child: Column(
            children: <Widget>[
              avatar,
              ClipOval(child: avatar,),
              ClipRRect(
                borderRadius: BorderRadius.circular(5.0),
                child: avatar,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    widthFactor: .5,
                    child: avatar,
                  ),
                  Text("你好世界", style: TextStyle(color: Colors.green),)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ClipRect(
                    child: Align(
                      alignment: Alignment.topLeft,
                      widthFactor: .5,
                      child: avatar,
                    ),
                  ),
                  Text("你好世界", style: TextStyle(color: Colors.green),)
                ],
              )
            ],
          ),
      ),
      )
    );
  }


}