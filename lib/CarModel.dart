import 'dart:collection';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutternice/Item.dart';

class CartModel extends ChangeNotifier {
  
  final List<Item> _items = [];

  UnmodifiableListView<Item> get items => UnmodifiableListView(_items);

  double get totalPrice => _items.fold(0, (value, item) => value + item.count * item.price);


  void add(Item item) {
    _items.add(item);
    notifyListeners();
  }

}