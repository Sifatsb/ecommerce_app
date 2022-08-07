import 'package:flutter/material.dart';

class ReportPage extends StatelessWidget {
  static const String routeName = '/report';
  const ReportPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      //static const String routeName = '/product';
      appBar: AppBar(title: Text('Report Page'),),
    );
  }
}
