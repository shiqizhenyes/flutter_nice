import 'package:flutter/material.dart';

class ThemeAndColorDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ThemeAndColorState();

}

class _ThemeAndColorState extends State<ThemeAndColorDemo> {

  Color _themeColor = Colors.teal;



  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ThemeData _themeData = Theme.of(context);
    return Theme(
      data: ThemeData(
        primaryColor: _themeColor,
        iconTheme: IconThemeData(color: _themeColor)
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text("ThemeAndColorDemo"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.favorite),
                Icon(Icons.airport_shuttle),
                Text("color follow theme")
              ],
            ),
            Theme(
              data: _themeData.copyWith(
                iconTheme: IconThemeData(
                  color: Colors.black
                )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.favorite),
                  Icon(Icons.airport_shuttle),
                  Text("color always black")
                ],
              )
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _themeColor = _themeColor == Colors.teal ? Colors.blue : Colors.teal;
            });
          },
          backgroundColor: _themeColor,
          child: Icon(Icons.palette,),
        ),
      )
    );
  }


}