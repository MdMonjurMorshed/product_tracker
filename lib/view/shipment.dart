import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:product_tracking/controller/controle/shipment_controller.dart';
import 'package:product_tracking/themes/themes.dart';
import 'package:easy_stepper/easy_stepper.dart';

class ShipmentPage extends StatelessWidget {
  ShipmentPage({super.key});
  final shipController = Get.find<ShipmentController>();
  int currentIndex = 0;

  void changeIndex(int index) {
    currentIndex = index;
  }

  @override
  Widget build(BuildContext context) {
    print(shipController.bottomNavbarIndex.value.obs);
    return Scaffold(
      body: Stack(
        children: [
          Obx(() => IndexedStack(
                index: shipController.bottomNavbarIndex.value,
                children: shipController.widList,
              )),
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Obx(() => NavigationBarTheme(
                  data: NavigationBarThemeData(
                    height: MediaQuery.of(context).size.height / 15,
                    indicatorColor: Colors.yellow[300],
                    backgroundColor: Colors.white,
                    elevation: 10,
                  ),
                  child: NavigationBar(
                    selectedIndex: shipController.bottomNavbarIndex.value,
                    onDestinationSelected: shipController.navIndexChange,
                    destinations: [
                      NavigationDestination(
                          icon: IconTheme(
                            data: AppTheme.iconTheme.bottomNavbarIcon,
                            child: Icon(
                              Icons.home_outlined,
                            ),
                          ),
                          label: 'Home'),
                      NavigationDestination(
                          icon: IconTheme(
                              data: AppTheme.iconTheme.bottomNavbarIcon,
                              child: Icon(Icons.work_history_outlined)),
                          label: 'History'),
                      NavigationDestination(
                          icon: IconTheme(
                              data: AppTheme.iconTheme.bottomNavbarIcon,
                              child: Icon(Icons.account_circle_outlined)),
                          label: 'My Account'),
                    ],
                  ))))
        ],
      ),
    );
  }
}
