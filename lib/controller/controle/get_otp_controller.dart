import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:product_tracking/controller/controle/send_otp_control.dart';
import 'package:product_tracking/view/signup.dart';

class GetOtpController extends GetxController {
  String otp = '';
  final otpGet = Get.put<SendOtpController>(SendOtpController());

  FirebaseAuth auth = FirebaseAuth.instance;

  submitOtp() async {
    // try {
    //   PhoneAuthCredential credential = PhoneAuthProvider.credential(
    //       verificationId: otpGet.verificationId!, smsCode: otp);

    //   await auth.signInWithCredential(credential);
    //   Get.toNamed('/signup');
    // } catch (e) {
    //   print(e);
    // }
    Get.toNamed('/signup');
  }
}
