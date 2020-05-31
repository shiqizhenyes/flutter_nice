
import 'package:flutter/material.dart';

class ContainerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ContainerDemo"),
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 50.0, left: 120.0, bottom: 100),
            constraints: BoxConstraints.tightFor(width: 200, height: 150),
            decoration: BoxDecoration(
              gradient: RadialGradient(
                colors: [Colors.red, Colors.orange],
                center: Alignment.topLeft,
                radius: .98,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black54,
                    offset: Offset(2.0, 2.0),
                    blurRadius: 4.0
                  )
                ]
            ),
            transform: Matrix4.rotationZ(.2),
            alignment: Alignment.center,
            child: Text("5.20", style: TextStyle(color: Colors.white, fontSize: 40.0),),
          ),
          Container(
            margin: EdgeInsets.all(50.0),
            color: Colors.green,
            child: Text("hello"),
          ),
          Container(
            padding: EdgeInsets.all(50.0),
            color: Colors.pink,
            child: Text("hello", style: TextStyle(color: Colors.white, fontSize: 40.0),),
          )
        ],
      ) 
    );
  }

  
}