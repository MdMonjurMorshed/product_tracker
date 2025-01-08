import 'package:flutter/widgets.dart';

class BottomPersistentItem {
  final String name;
  final Widget tab;
  final GlobalKey<NavigatorState>? navigatorkey;
  final String title;
  final IconData icon;

  BottomPersistentItem(
      {required this.name,
      required this.tab,
      this.navigatorkey,
      required this.title,
      required this.icon});
}
