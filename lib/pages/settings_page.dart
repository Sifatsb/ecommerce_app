import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  static const String routeName = '/settings';
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      //static const String routeName = '/product';
      appBar: AppBar(title: Text('Settings Page'),),
    );
  }
}
