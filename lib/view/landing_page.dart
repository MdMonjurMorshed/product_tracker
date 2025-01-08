import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:product_tracking/model/bottom_persistent_item.dart';
import 'package:product_tracking/view/account.dart';
import 'package:product_tracking/view/bottombar_persistent.dart';
import 'package:product_tracking/view/history.dart';
import 'package:product_tracking/view/home.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomBarPersistent(items: [
      BottomPersistentItem(
          name: '/home', tab: HomePage(), title: 'Home', icon: Icons.home),
      BottomPersistentItem(
          name: '/history',
          tab: HistoryPage(),
          title: 'History',
          icon: Icons.work_history_outlined),
      BottomPersistentItem(
          name: '/account',
          tab: AccountPage(),
          title: 'Account',
          icon: Icons.person_outline),
    ]);
  }
}
