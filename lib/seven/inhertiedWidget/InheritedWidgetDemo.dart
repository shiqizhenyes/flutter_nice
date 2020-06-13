import 'package:flutter/material.dart';

import 'ShareDataWidget.dart';

/// 数据共享widget InheitedWidget
class InheritedWidgetDemo extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _InheritedWidgetState();
  
}

class _InheritedWidgetState extends State<InheritedWidgetDemo> {

  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("InheritedWidgetDemo"),
      ),
      body: Center(  
        child: ShareDataWidget(
          data: count,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: 20.0),
                child: _TestWidget(),
              ),
              RaisedButton(
                child: Text("Incrment"),
                onPressed: () {
                  setState(() {
                    ++count;
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}


class _TestWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TestWidgetState();
}

class _TestWidgetState extends State<_TestWidget> {
  @override
  Widget build(BuildContext context) {
    return Text(ShareDataWidget.of(context).data.toString());
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("Dependencies change");
  }

}