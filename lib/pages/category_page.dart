import 'package:flutter/material.dart';

class CategoryPage extends StatelessWidget {
  static const String routeName = '/category';
  const CategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //static const String routeName = '/product';
      appBar: AppBar(title: Text('Category Page'),),
    );
  }
}
