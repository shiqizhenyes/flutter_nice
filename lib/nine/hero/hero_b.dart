
import 'package:flutter/material.dart';

class HeroB extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Hero(
          tag: "avatar",
          child: Image.asset("assets/avatar.png",
            width: 300, fit: BoxFit.fitHeight,),
        )
    );
  }

}