import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:product_tracking/controller/bindings/bindings.dart';
import 'package:product_tracking/themes/themes.dart';
import 'package:product_tracking/view/get_otp.dart';
import 'package:product_tracking/view/history.dart';
import 'package:product_tracking/view/home.dart';
import 'package:product_tracking/view/landing_page.dart';
import 'package:product_tracking/view/send_otp.dart';
import 'package:product_tracking/view/shipment.dart';
import 'package:product_tracking/view/signup.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      // navigation bar color
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark // status bar color
      ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme.define(),
      initialBinding: ControllerBindings(),
      home: SendOtp(),
      getPages: [
        GetPage(
            name: '/signup',
            page: () => SignUpPage(),
            transition: Transition.rightToLeft,
            transitionDuration: Duration(milliseconds: 500)),
        GetPage(
            name: '/otp-verify',
            page: () => VarifyOtp(),
            transition: Transition.fadeIn,
            transitionDuration: Duration(milliseconds: 500)),
        GetPage(
            name: '/shipment',
            page: () => ShipmentPage(),
            transition: Transition.downToUp,
            transitionDuration: Duration(milliseconds: 650)),
        GetPage(
            name: '/home',
            page: () => HomePage(),
            transition: Transition.fadeIn,
            transitionDuration: Duration(milliseconds: 500)),
        GetPage(
            name: '/history',
            page: () => HistoryPage(),
            transition: Transition.fadeIn,
            transitionDuration: Duration(milliseconds: 500)),
        GetPage(
            name: '/landing',
            page: () => LandingPage(),
            transition: Transition.downToUp,
            transitionDuration: Duration(milliseconds: 500))
      ],
    );
  }
}
