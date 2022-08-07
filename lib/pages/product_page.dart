import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  static const String routeName = '/product';
  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //static const String routeName = '/product';
      appBar: AppBar(title: Text('Product Page'),),
    );
  }
}
