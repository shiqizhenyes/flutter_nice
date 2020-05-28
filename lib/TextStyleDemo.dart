
import 'package:flutter/material.dart';

class TextStyleDemo extends StatelessWidget {

  // void _tapRecognizer() {

  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text("TextStyleDemo"),
    ),
    body: Container(
      child: Column( 
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("hello world", textAlign: TextAlign.start),
          Text("Hello world! I'm Jack. "*4, maxLines: 1, overflow: TextOverflow.ellipsis,),
          Text("Hello world!" * 6, textAlign: TextAlign.center),
          Text("Hello world!", textScaleFactor: 1.5,),
          Text("Hello wordl!", style: TextStyle(
            color: Colors.blue,
            fontSize: 18.0,
            height: 1.2,
            fontFamily: "Courier",
            background: Paint()..color = Colors.yellow,
            decoration: TextDecoration.underline,
            decorationStyle: TextDecorationStyle.dotted
          ),),
          Text.rich(TextSpan(
            children: [
              TextSpan(
              text: "Home: "
            ),
              TextSpan(
                text: "https://flutterchina.club",
                style: TextStyle(
                  color: Colors.blue,
                )
              ),
            ],
          )),
          DefaultTextStyle(
            //1.设置文本默认样式  
            style: TextStyle(
              color:Colors.red,
              fontSize: 20.0,
            ),
            textAlign: TextAlign.start,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("hello world"),
                Text("I am Jack"),
                Text("I am Jack",
                  style: TextStyle(
                    inherit: false, //2.不继承默认样式
                    color: Colors.grey
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ),
    );
  }
}