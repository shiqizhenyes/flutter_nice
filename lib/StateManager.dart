
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ParentCWidget.dart';
import 'ParentWidget.dart';
import 'TapBoxA.dart';

class StateManager extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("StateManager")
      ),
      body: Container(
        child: Center(
          child: Align(
            alignment: Alignment.center,
            child: Column(
              children: <Widget>[
                Padding(padding: EdgeInsets.all(10.0), 
                child: TapBoxA()),
                Padding(padding: EdgeInsets.all(10.0),
                child: ParentWidget()),
                Padding(padding: EdgeInsets.all(10.0), 
                child: ParentCWidget())
              ],
            ),
          ),
        ),
      ),
    );
  }

}


// child: Column(
//               children: <Widget>[
//                 TapBoxA(),
//                 ParentWidget(),
//               ],
//             ),
// Padding(padding: EdgeInsets.all(10)),
