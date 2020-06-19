

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:nice/eleven/json/model/user.dart';

class JsonModelDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _JsonModelState();
}

class _JsonModelState extends State<JsonModelDemo> {

  String jsonStr='{"name":"Jack", "email": "jack@163.com"}';

  var name = "";
  var email = "";

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("JsonModelDemo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("name:"),
                Text("$name")
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("email:"),
                Text("$email")
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Map userMap = json.decode(jsonStr);
        print(userMap);
        setState(() {
          User user = User.fromJson(userMap);
          name = user.name;
          email = user.email;
        });
      }, child: Text("json", style: TextStyle(color: Colors.white),),),
    );
  }


}