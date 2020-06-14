import 'package:flutter/material.dart';

class StreamDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _StreamSate();
}

class _StreamSate extends State<StreamDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("StreamDemo"),
      ),
      body: Container(
        child: Center(
          child: StreamBuilder(
            builder: (context, snapShot) {
              if (!snapShot.hasError) {
                switch(snapShot.connectionState) {
                  case ConnectionState.none:
                    return Text("no stream");
                    break;
                  case ConnectionState.waiting:
                    return CircularProgressIndicator();
                    break;
                  case ConnectionState.active:
                    return Text("active: ${snapShot.data}");
                    break;
                  case ConnectionState.done:
                    return Text("no data");
                    break;
                }
                return null;
              } else{
                return Text("error: ${snapShot.error}");
              }
            },
            stream: counter(),
          ),
        ),
      ),
    );
  }


  Stream<int> counter () {
    return Stream.periodic(Duration(milliseconds: 1000), (i) {
      return i;
    });
  }


}