import 'package:ecommerce_app/pages/category_page.dart';
import 'package:ecommerce_app/pages/dashboard_page.dart';
import 'package:ecommerce_app/pages/order_page.dart';
import 'package:ecommerce_app/pages/product_page.dart';
import 'package:ecommerce_app/pages/report_page.dart';
import 'package:ecommerce_app/pages/settings_page.dart';
import 'package:ecommerce_app/pages/user_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),

      initialRoute: DashboardPage.routeName,

      routes: {
        DashboardPage.routeName: (_) => DashboardPage(),
        ProductPage.routeName: (_) => ProductPage(),
        CategoryPage.routeName: (_) => CategoryPage(),
        OrderPage.routeName: (_) => OrderPage(),
        UserPage.routeName: (_) => UserPage(),
        SettingsPage.routeName: (_) => SettingsPage(),
        ReportPage.routeName: (_) => ReportPage(),
      },

    );
  }
}

