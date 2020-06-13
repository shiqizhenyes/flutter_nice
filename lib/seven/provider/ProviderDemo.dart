import 'package:flutter/material.dart';
import 'ChangeNotifierProvider.dart';
import 'CarModel.dart';
import 'Item.dart';

class ProviderDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ProviderDemoState();
}

class _ProviderDemoState extends State<ProviderDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ProviderDemo"),
      ),
      body: Center(
        child: ChangeNotifierProvider<CartModel>(
          data: CartModel(),
          child: Builder(builder: (context) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Builder(builder: (context) {
                  var car = ChangeNotifierProvider.of<CartModel>(context);
                  print("zack "+ car.totalPrice.toString());
                  return Text("total price: ${car.totalPrice}");
                },),            
                Builder(builder: (context) {
                  return RaisedButton(onPressed: () {
                    ChangeNotifierProvider.of<CartModel>(context).add(Item(price: 10.0, count: 1));
                  }, 
                  child: Text("add goods"),);
                })
              ],
            );
          },),
        ),
      ),
    );
  }
  

}