import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:product_tracking/controller/controle/signup_controller.dart';

import '../themes/themes.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});
  final signContoller = Get.find<SignUPController>();

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
                child: Image.asset('assets/sign_up/create.png')),

            SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: EdgeInsets.only(top: 5, left: 20, bottom: 5),
                  child: Text(
                    'Create Account',
                    style: AppTheme.text.headerText,
                  ),
                )),

            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Padding(
                  padding: EdgeInsets.only(top: 5, left: 20, bottom: 5),
                  child: Text(
                      'Your account is just few clicks away! Please provide the information bellow to create account and use GM express')),
            ),

            // Sizedbox for input box and a sending button
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                  child: TextField(
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        focusColor: Colors.black,
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(10)),
                        prefixIcon: Icon(Icons.mail),
                        hintText: 'e.g example@gmail.com'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        focusColor: Colors.black,
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(10)),
                        prefixIcon: Icon(Icons.key),
                        hintText: ' enter password'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        focusColor: Colors.black,
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(10)),
                        prefixIcon: Icon(Icons.key),
                        hintText: 'retype password'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                  child: GestureDetector(
                    onTap: () => signContoller.signUP(),
                    child: Container(
                      height: MediaQuery.of(context).size.height / 15,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: AppTheme.color.sendOtpBtn,
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                        child: Text('Sign Up'),
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
