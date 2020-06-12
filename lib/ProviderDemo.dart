import 'package:flutter/material.dart';
import 'package:flutternice/CarModel.dart';
import 'package:flutternice/ChangeNotifierProvider.dart';
import 'package:flutternice/Item.dart';

class ProviderDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ProviderDemoState();
}

class _ProviderDemoState extends State<ProviderDemo> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ChangeNotifierProvider<CartModel>(
        data: CartModel(),
        child: Builder(builder: (context) {
          return Column(
            children: <Widget>[
              Builder(builder: (context) {
                var cart = ChangeNotifierProvider.of<CartModel>(context);
                return Text("total price: ${cart.totalPrice}");
              }),
              Builder(builder: (context) {
                return RaisedButton(onPressed: () {
                  ChangeNotifierProvider.of<CartModel>(context).add(Item(price: 10.0, count: 1));
                }, 
                child: Text("添加商品"),);
              })
            ],
          );
        },),
      ),
    );
  }
  

}