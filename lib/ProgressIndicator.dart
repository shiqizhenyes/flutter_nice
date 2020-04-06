import 'package:flutter/material.dart';

class ProgressIndicatorWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ProgressIndicatorState();
}

class _ProgressIndicatorState extends State<ProgressIndicatorWidget> with SingleTickerProviderStateMixin {

  AnimationController _animationController;

  @override
  void setState(fn) {
    super.setState(fn);
  }

  @override
  void initState() {
    _animationController = AnimationController(vsync: this,
        duration: Duration(seconds: 3));
    _animationController.forward();
    _animationController.addListener(() => setState(() => {}));
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ProgressIndicatorWidget"),
      ),
      body:    SingleChildScrollView(
        child:
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  LinearProgressIndicator(
                    backgroundColor: Colors.grey[200],
                    valueColor: ColorTween(
                        begin: Colors.grey,
                        end: Colors.green
                    ).animate(_animationController),
                    value: _animationController.value,
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: SizedBox(
                      height: 100,
                      width: 100,
                      child: CircularProgressIndicator(
                        backgroundColor: Colors.grey,
                        valueColor: ColorTween(
                          begin: Colors.redAccent,
                          end: Colors.amber,
                        ).animate(_animationController),
                        value: _animationController.value,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: SizedBox(
                      height: 100,
                      width: 100,
                      child: CircularProgressIndicator(
                        backgroundColor: Colors.grey,
                        valueColor: AlwaysStoppedAnimation(Colors.green),
                        value: .8,
                      ),
                    ),
                  ),
                ],
              ),
            )
      ),
    );
  }

}