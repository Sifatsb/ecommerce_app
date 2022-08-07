import 'package:flutter/material.dart';

class DashboradItem {
  IconData icon;
  String title;

  DashboradItem({required this.icon, required this.title});

  static const String product = 'Product';
  static const String category = 'Category';
  static const String order = 'Orders';
  static const String user = 'Users';
  static const String settings = 'Settings';
  static const String report = 'Report';

}

final List<DashboradItem> dashboardItems = [
  DashboradItem(icon: Icons.card_giftcard, title: DashboradItem.product),
  DashboradItem(icon: Icons.category, title: DashboradItem.category),
  DashboradItem(icon: Icons.monetization_on, title: DashboradItem.order),
  DashboradItem(icon: Icons.person, title: DashboradItem.user),
  DashboradItem(icon: Icons.settings, title: DashboradItem.settings),
  DashboradItem(icon: Icons.area_chart, title: DashboradItem.report),
];