import 'package:flutter/material.dart';

class UserPage extends StatelessWidget {
  static const String routeName = '/user';
  const UserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //static const String routeName = '/product';
      appBar: AppBar(title: Text('User Page'),),
    );
  }
}
