
import 'package:flutter/material.dart';
import 'package:nice/nine/hero/hero_b.dart';

class HeroA extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HeroA"),
        leading: GestureDetector(
          child: Hero(
              tag: "avatar",
              child: ClipOval(
                child: Padding(padding: EdgeInsets.all(10.0),
                child: Image.asset("assets/avatar.png",),),
              )
          ),
          onTap: () {
            Navigator.push(context, PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation) {
                  return FadeTransition(
                    opacity: animation,
                    child: Scaffold(
                      appBar: AppBar(
                        title: Text("HeroB"),
                      ),
                      body: HeroB(),
                    ),
                  );
                }
            )
            );
          },
        ),
        actions: <Widget>[

        ],
      ),
    );
  }

}