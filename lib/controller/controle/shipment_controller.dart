import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:product_tracking/view/history.dart';

import '../../view/home.dart';

class ShipmentController extends GetxController {
  RxInt bottomNavbarIndex = 0.obs;

  List<Widget> widList = [HomePage(), HistoryPage(), Container()];

  void navIndexChange(int index) {
    bottomNavbarIndex.value = index;
  }
}
