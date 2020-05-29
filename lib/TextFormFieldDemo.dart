
import 'package:flutter/material.dart';

class TextFormFieldDemo extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _TextFormFieldState();

}

class _TextFormFieldState extends State<TextFormFieldDemo> {

  TextEditingController _textEditingController = TextEditingController();

  @override
  void initState() {
    _textEditingController.addListener(() {
      print("输入用户: " + _textEditingController.text);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextFormFieldDemo"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            TextField(
              autofocus: true,
              controller: _textEditingController,
              decoration: InputDecoration(
                labelText: "用户名",
                hintText: "用户名或邮箱",
                prefixIcon: Icon(Icons.person)
              ),
            ),
            TextField(
              onChanged: (value) {
                print("输入密码：$value");
              },
              decoration: InputDecoration(
                labelText: "密码",
                hintText: "您的登陆密码",
                prefixIcon: Icon(Icons.lock)
              ),
              obscureText: true,
            )
          ],
        ),
      ),
    );
  }


}