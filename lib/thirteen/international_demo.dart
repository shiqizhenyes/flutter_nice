
import 'package:flutter/material.dart';
import 'package:nice/thirteen/nice_localizations_delegate.dart';

import 'nice_localizations.dart';

class InternationalDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _InternationalState();
}

class _InternationalState extends State<InternationalDemo> {

  List<String> _language = ["英语", "日语", "简体中文", "繁体中文"];

  void _changeLanguage(index) {
    switch(index) {
      case 0:

        print(NiceLocalizations.of(context).title);
//        print(NiceLocalizations.of(context).name);
        break;
      case 1:
        break;
      case 2:
        break;
      case 3:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(NiceLocalizations.of(context).title),
      ),
      body: Center(
        child: ListView.builder(itemBuilder: (context, index) {
          return FlatButton(onPressed: () {
            _changeLanguage(index);
          }, child: Text("${_language[index]}", style: TextStyle(fontSize: 20.0),));
        },
        itemCount: _language.length,),
      ),
    );
  }


}