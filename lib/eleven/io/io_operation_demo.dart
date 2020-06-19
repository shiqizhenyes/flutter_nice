import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class IoOperationDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _IoOperationState();
}

class _IoOperationState extends State<IoOperationDemo> {

  int _counter = 0;


  Future<File> _getLocalFile() async {
    String path = (await getApplicationDocumentsDirectory()).path;
    return File("$path/counter.conf");
  }

  Future<int> _readCounter() async {
    File file = await _getLocalFile();
    String counterStr = await file.readAsString();
    return int.parse(counterStr);
  }


  @override
  void initState() {
    super.initState();
    _readCounter().then((counter) {
      setState(() {
        _counter = counter;
      });
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("IoOperationDemo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("点击了 $_counter 次"),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        _getLocalFile().then((file) async {
          setState(() {
            _counter++;
          });
          await file.writeAsString("$_counter");
        });
        
      }, child: Icon(Icons.add),),
    );
  }
}