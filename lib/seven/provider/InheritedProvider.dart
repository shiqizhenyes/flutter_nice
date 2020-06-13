import 'package:flutter/widgets.dart';

class InheritedProvider<T> extends InheritedWidget {

  InheritedProvider({@required this.data, Widget child}) : super(child: child);

  final T data;

  @override
  bool updateShouldNotify(InheritedProvider oldWidget) {
    return true;
  }
  
}