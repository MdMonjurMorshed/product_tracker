import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:product_tracking/controller/controle/bottom_bar_controller.dart';
import 'package:product_tracking/model/bottom_persistent_item.dart';

class BottomBarPersistent extends StatelessWidget {
  final List<BottomPersistentItem> items;
  BottomBarPersistent({super.key, required this.items});
  final bottomBarController = Get.find<BottomBarController>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomBarController>(builder: (controller) {
      return WillPopScope(
        onWillPop: () async {
          if (items[bottomBarController.bottomBarIndex.value]
                  .navigatorkey
                  ?.currentState
                  ?.canPop() ??
              false) {
            items[bottomBarController.bottomBarIndex.value]
                .navigatorkey
                ?.currentState
                ?.pop();
            return false;
          } else {
            return true;
          }
        },
        child: Scaffold(
          body: IndexedStack(
            index: bottomBarController.bottomBarIndex.value,
            children: items
                .map((page) => GetNavigator(
                      pages: [GetPage(name: page.name, page: () => page.tab)],
                    ))
                .toList(),
          ),
          bottomNavigationBar: NavigationBarTheme(
              data: NavigationBarThemeData(),
              child: NavigationBar(
                destinations: items
                    .map((item) => NavigationDestination(
                        icon: Icon(item.icon), label: item.title))
                    .toList(),
              )),
        ),
      );
    });
  }
}
