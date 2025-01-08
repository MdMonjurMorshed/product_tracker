import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../view/get_otp.dart';

class SendOtpController extends GetxController {
  final sendOtpController = TextEditingController();
  final FirebaseAuth auth = FirebaseAuth.instance;
  String? verificationId;

  getOtpCode(String num) async {
    // await auth.verifyPhoneNumber(
    //     phoneNumber: num,
    //     verificationCompleted: (PhoneAuthCredential credential) {},
    //     verificationFailed: (FirebaseAuthException e) {},
    //     codeSent: (id, code) async {
    //       verificationId = id;
    //       await Get.to(() => VarifyOtp());
    //     },
    //
    //    codeAutoRetrievalTimeout: (code) {});
    Get.toNamed('/otp-verify');
  }
}
