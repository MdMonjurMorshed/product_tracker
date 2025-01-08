import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:product_tracking/view/shipment.dart';

class SignUPController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController1 = TextEditingController();
  TextEditingController passwordController2 = TextEditingController();
  String uId = '';
  String uEmail = '';
  FirebaseAuth auth = FirebaseAuth.instance;

  // need to pass email and password parameter

  void signUP() async {
    // try {
    //   final credential = await auth.createUserWithEmailAndPassword(
    //       email: email, password: password);

    //   User user = credential.user!;
    //   uId = user.uid;
    //   uEmail = user.email!;
    // } catch (e) {
    //   print(e);
    // }
    Get.offNamed('/landing');
  }
}
