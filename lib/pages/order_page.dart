import 'package:flutter/material.dart';

class OrderPage extends StatelessWidget {
  static const String routeName = '/order';
  const OrderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //static const String routeName = '/product';
      appBar: AppBar(title: Text('Order Page'),),
    );
  }
}
