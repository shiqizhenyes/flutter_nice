import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web_socket_channel/io.dart';

/// 有bug 暂时未知原因
class WebSocketDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _WebSocketState();

}

class _WebSocketState extends State<WebSocketDemo> {

  var url = "ws://121.40.165.18:8800";

  TextEditingController _controller = TextEditingController();

  IOWebSocketChannel _channel;

  void _connect() {
    _channel = IOWebSocketChannel.connect(url);
  }

  var _data = "";

  var _msg = "";

  void _send(msg) {
    _channel.sink.add(msg);
  }


  @override
  void initState() {
    super.initState();
    _connect();
    _controller.addListener(() {
      _msg = _controller.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WebSocketDemo"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 16.0, bottom: 16.0),
                child: Text("$_data"),
              ),
              StreamBuilder(builder: (context, snapShot) {
                print("data："+snapShot.data);
//              setState(() {
//                _data = snapShot.data;
//              });
                return Text(snapShot.connectionState.toString());
              }, stream: _channel.stream, ),
              TextField(
                controller: _controller,
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        _send(_msg);
      }, child: Icon(Icons.send),),
    );
  }


}