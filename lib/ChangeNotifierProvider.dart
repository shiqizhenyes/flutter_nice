import 'package:flutter/material.dart';
import 'package:flutternice/InheritedProvider.dart';


class ChangeNotifierProvider<T extends ChangeNotifier> extends StatefulWidget {
  
  ChangeNotifierProvider({
    Key key,
    this.data,
    this.child
  });
  

  final Widget child;
  final T data;

  static T of<T extends ChangeNotifier>(BuildContext context) {
    // final type = _typeOf<InheritedProvider<T>>();
    final provider = context.dependOnInheritedWidgetOfExactType<InheritedProvider<T>>();
    return provider.data;
  }


  @override
  State<StatefulWidget> createState() => _ChangeNotifierProviderState();
}

class _ChangeNotifierProviderState<T extends ChangeNotifier> extends State<ChangeNotifierProvider<T>> {

  void update() {
    setState(() => {});
  }

  @override
  void didUpdateWidget(ChangeNotifierProvider<T> oldWidget) {
    if (widget.data != oldWidget.data) {
      oldWidget.data.removeListener(update);
      widget.data.addListener(update);
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  void initState() {
    widget.data.addListener(update);
    super.initState();
  }

  @override
  void dispose() {
    widget.data.removeListener(update);
    super.dispose();
  }

 
  @override
  Widget build(BuildContext context) {
    return InheritedProvider<T>(
      data: widget.data,
      child: widget.child,
    );
  }
 

}