import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:product_tracking/controller/controle/send_otp_control.dart';
import 'package:product_tracking/view/get_otp.dart';

import '../themes/themes.dart';

class SendOtp extends StatelessWidget {
  SendOtp({super.key});
  final getOtp = Get.put(SendOtpController());
  String number = '';
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
                child: Image.asset('assets/take_number/number.png')),

            SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: EdgeInsets.only(top: 5, left: 20, bottom: 5),
                  child: Text(
                    'Your Phone Number',
                    style: AppTheme.text.headerText,
                  ),
                )),

            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Padding(
                  padding: EdgeInsets.only(top: 5, left: 20, bottom: 5),
                  child: Text(
                      'Welcome to GM express!please enter your phone number bellow we will send a varification to complete your registration')),
            ),

            // Sizedbox for input box and a sending button
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                  child: IntlPhoneField(
                    onChanged: (value) {
                      number = value.completeNumber;
                    },
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        focusColor: Colors.black,
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(10)),
                        prefixIcon: Icon(Icons.phone_android),
                        hintText: 'e.g +880163342204'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                  child: GestureDetector(
                    onTap: () => getOtp.getOtpCode(number),
                    child: Container(
                      height: MediaQuery.of(context).size.height / 15,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: AppTheme.color.sendOtpBtn,
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                        child: Text('Send'),
                      ),
                    ),
                  ),
                )
              ]),
            ),
          ]),
        ),
      ),
    );
  }
}
