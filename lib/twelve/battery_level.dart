import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BatteryLevel extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _BatterLevelState();

}

class _BatterLevelState extends State<BatteryLevel> {

  static const platform = const MethodChannel("me.nice.flutter/battery");

  String _batteryLevel = "unknown battery level";

  Future<Null> _getBatteryLevel() async{
    String batteryLevel;
    try {
      final int result = await platform.invokeMethod("getBatteryLevel");
      batteryLevel = "battery level at $result %";

    }catch(e) {

    }
    setState(() {
      _batteryLevel = batteryLevel;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BatteryLevel"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("$_batteryLevel"),
            SizedBox(width: double.infinity, height: 20.0,),
            FlatButton(onPressed: () {
              _getBatteryLevel();
            }, child: Text("get battery level"))
          ],
        ),
      ),
    );
  }

}