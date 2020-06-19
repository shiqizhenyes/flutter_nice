
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:nice/eleven/json/model/user.dart';
import 'package:nice/main.dart';

class UsersListDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _UserListState();
}

class _UserListState extends State<UsersListDemo> {


  String jsonStr='['
        '{"name":"Jack", "email": "jack@163.com"},'
        '{"name":"Rose2", "email": "rose@163.com"},'
        '{"name":"Rose3", "email": "rose@163.com"},'
        '{"name":"Rose4", "email": "rose@163.com"},'
        '{"name":"Rose5", "email": "rose@163.com"},'
        '{"name":"Rose6", "email": "rose@163.com"},'
        '{"name":"Rose7", "email": "rose@163.com"},'
        '{"name":"Rose8", "email": "rose@163.com"},'
        '{"name":"Rose9", "email": "rose@163.com"},'
        '{"name":"Rose10", "email": "rose@163.com"}]';

  List<User> users;

  @override
  void initState() {
    super.initState();
    _loadUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("UsersListDemo"),
      ),
      body: ListView.builder(itemBuilder: (context, index) {
        print('zack$index');
        return Row(
          children: <Widget>[
            Text("${users[index].name}", style: TextStyle(fontSize: 20.0),),
            SizedBox(width: 20,),
            Text("${users[index].email}", style: TextStyle(fontSize: 20.0))
          ],
        );
      },
      itemCount: users.length,),
    );
  }

  _loadUser() {
    Iterable it = json.decode(jsonStr);
    setState(() {
      users = it.map((e) => User.fromJson(e)).toList();
    });
  }

}