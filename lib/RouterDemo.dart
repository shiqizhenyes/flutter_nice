import 'package:flutter/material.dart';

class RouterDemo extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => RouterState();

}

class RouterState extends State<RouterDemo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Route",
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      initialRoute: "/",
      routes: {
        "/":(context) => RouterDemo()
      },
    );
  }

}