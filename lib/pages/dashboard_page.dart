import 'package:ecommerce_app/models/dashboard_item.dart';
import 'package:ecommerce_app/pages/category_page.dart';
import 'package:ecommerce_app/pages/order_page.dart';
import 'package:ecommerce_app/pages/product_page.dart';
import 'package:ecommerce_app/pages/report_page.dart';
import 'package:ecommerce_app/pages/settings_page.dart';
import 'package:ecommerce_app/pages/user_page.dart';
import 'package:ecommerce_app/widgets/dashboard_item_view.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  static const String routeName = '/dashboard';

  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: GridView.builder(
        itemCount: dashboardItems.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 4, mainAxisSpacing: 4),
          itemBuilder: (context, index) => DashboardItemView(
              item: dashboardItems[index], onPressed: (value) {
               final route = nevigate(value);
                Navigator.pushNamed(context, route);
          })),
    );
  }

  String nevigate(String value) {
    String route = '';
    switch(value) {

      case DashboradItem.product:
        route = ProductPage.routeName;

        break;

        case DashboradItem.category:
          route = CategoryPage.routeName;

        break;

        case DashboradItem.order:
          route = OrderPage.routeName;

        break;

        case DashboradItem.user:
          route = UserPage.routeName;

        break;

        case DashboradItem.settings:
          route =  SettingsPage.routeName;

        break;

        case DashboradItem.report:
          route =  ReportPage.routeName;

        break;


    }
    return route;
  }
}
