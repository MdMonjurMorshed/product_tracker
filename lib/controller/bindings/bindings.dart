import 'package:get/get.dart';
import 'package:product_tracking/controller/controle/bottom_bar_controller.dart';
import 'package:product_tracking/controller/controle/get_otp_controller.dart';
import 'package:product_tracking/controller/controle/send_otp_control.dart';
import 'package:product_tracking/controller/controle/shipment_controller.dart';
import 'package:product_tracking/controller/controle/signup_controller.dart';

class ControllerBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SendOtpController>(() => SendOtpController());
    Get.put<GetOtpController>(GetOtpController());
    Get.put<SignUPController>(SignUPController());
    Get.put<ShipmentController>(ShipmentController());
    Get.put<BottomBarController>(BottomBarController());
  }
}
