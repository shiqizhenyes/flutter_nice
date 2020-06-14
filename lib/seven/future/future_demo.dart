import 'package:flutter/material.dart';

/// 异步更新UI
///
///
class FutureDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _FutureState();
}

class _FutureState extends State<FutureDemo> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FutureDemo"),
      ),
      body: Container(
        child: Center(
          child: FutureBuilder(
            builder: (context, snapShot) {
              if (snapShot.connectionState == ConnectionState.done) {
                if (snapShot.hasError) {
                  return Text("error: ${snapShot.error}");
                } else {
                  return Text("response: ${snapShot.data}");
                }
              } else {
                return CircularProgressIndicator();
              }
            },
            future: mocNetworkData(),
          ),
        ),
      ),
    );
  }

  Future<String> mocNetworkData() async {
    return Future.delayed(Duration(milliseconds: 2000), () => "data from server");
  }

}