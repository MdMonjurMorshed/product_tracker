import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:product_tracking/controller/controle/get_otp_controller.dart';
import 'package:product_tracking/controller/controle/send_otp_control.dart';

import '../themes/themes.dart';

class VarifyOtp extends StatelessWidget {
  VarifyOtp({super.key});

  final otpGet = Get.find<SendOtpController>();
  final subOtp = Get.find<GetOtpController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          // sized box for image
          SizedBox(
              height: MediaQuery.of(context).size.height / 3,
              width: MediaQuery.of(context).size.width / 1.5,
              child: Image.asset('assets/get_otp/otp.png')),

          SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: EdgeInsets.only(top: 5, left: 20, bottom: 5),
                child: Text(
                  'Enter OTP',
                  style: AppTheme.text.headerText,
                ),
              )),

          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Padding(
                padding: EdgeInsets.only(top: 5, left: 20, bottom: 5),
                child: Text(
                    'Your account is almost ready Please enter the 6 digit otp code just sent to your phone number')),
          ),

          // Sizedbox for input box and a sending button
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                child: SizedBox(
                  width: double.infinity,
                  child: OTPTextField(
                    otpFieldStyle:
                        OtpFieldStyle(focusBorderColor: Colors.black),
                    fieldWidth: 50,
                    length: 6,
                    fieldStyle: FieldStyle.box,
                    onChanged: (value) {
                      subOtp.otp = value;
                    },
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                child: GestureDetector(
                  onTap: () => subOtp.submitOtp(),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 15,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: AppTheme.color.sendOtpBtn,
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                      child: Text('Verify'),
                    ),
                  ),
                ),
              )
            ]),
          ),
        ]),
      )),
    );
  }
}
