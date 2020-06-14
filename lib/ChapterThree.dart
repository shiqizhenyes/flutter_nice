import 'package:flutter/material.dart';

import 'ButtonDemo.dart';
import 'ImageIconDemo.dart';
import 'ProgressIndicatorWidget.dart';
import 'StateManager.dart';
import 'SwitchCheckBoxDemo.dart';
import 'TextFormFieldDemo.dart';
import 'TextStyleDemo.dart';

///第三章 基础组件
class ChapterThree extends StatelessWidget {

  BuildContext context;

  _goToStateManager() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return StateManager();
    }));
  }

  _goToTextStyleDemo() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return TextStyleDemo();
    }));
  }

  _goToButtonDemo() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return ButtonDemo();
    }));
  }

  _goToImageIconDemo() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return ImageIconDemo();
    }));
  }

  _goToSwitchCheckBoxDemo() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return SwitchCheckBoxDemo();
    }));
  }

  _goToTextFormFieldDemo() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return TextFormFieldDemo();
    }));
  }

  _goToProgressIndicatorDemo() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return ProgressIndicatorWidget();
    }));  
  }

  @override
  Widget build(BuildContext context) {
    this.context = context;
    return Scaffold(
      appBar: AppBar(
        title: Text("ChapterThree"),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                FlatButton(onPressed: _goToStateManager, child: Text("StateManager"))
              ],
            ),
            Row(
              children: <Widget>[
                FlatButton(onPressed: _goToTextStyleDemo, child: Text("textStyle"))
              ],
            ),
            Row(
              children: <Widget>[
                FlatButton(onPressed: _goToButtonDemo, child: Text("Button"))
              ],
            ),
            Row(
              children: <Widget>[
                FlatButton(onPressed: _goToImageIconDemo, child: Text("ImageIcon"))
              ],
            ),
            Row(
              children: <Widget>[
                FlatButton(onPressed: _goToSwitchCheckBoxDemo, child: Text("SwitchCheckBox"))
              ],
            ),
            Row(
              children: <Widget>[
                FlatButton(onPressed: _goToTextFormFieldDemo, child: Text("TextFormField"))
              ],
            ),
            Row(
              children: <Widget>[
                FlatButton(onPressed: _goToProgressIndicatorDemo, child: Text("ProgressIndicator"))
              ],
            ),
          ],
        ),
      ),
    );
  }
}