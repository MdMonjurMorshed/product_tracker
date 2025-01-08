import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:product_tracking/view/Signin.dart';

import '../themes/themes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize:
                Size.fromHeight(MediaQuery.of(context).size.height / 1.7),
            child: Container(
              height: MediaQuery.of(context).size.height / 1.7,
              decoration: BoxDecoration(
                  color: Colors.blue[400],
                  image: DecorationImage(
                      image: AssetImage('assets/shipment/shipment.png')),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25))),
              child: Center(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 20, top: 30),
                      child: Column(children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            'Current Location',
                            style: AppTheme.text.shipmentLittleText,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(
                            '2301 Frederick Street,Texas',
                            style: AppTheme.text.location,
                          ),
                        ),
                      ]),
                    ),
                    Padding(
                        padding: EdgeInsets.only(bottom: 15),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: Text(
                                'Track Your Shipment',
                                style: AppTheme.text.shipmentTitle,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 2),
                              child: Text(
                                'Please enter your shoping identifier',
                                style: AppTheme.text.shipmentLittleText,
                              ),
                            )
                          ],
                        )),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 20,
                        right: 20,
                      ),
                      child: Stack(children: [
                        SizedBox(
                          height: 50,
                          child: TextField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              focusColor: Colors.black,
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(10)),
                              prefixIcon: Icon(
                                Icons.token,
                                color: Colors.blue[400],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                            right: 5,
                            top: 3.5,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.yellow[300]),
                              height: MediaQuery.of(context).size.height / 20,
                              width: MediaQuery.of(context).size.width / 5,
                              child: Center(
                                child: Text('Track'),
                              ),
                            ))
                      ]),
                    ),
                  ],
                ),
              ),
            )),
        body: SingleChildScrollView(
            // physics: NeverScrollableScrollPhysics(),
            child: Column(children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Recent Activity'),
                GestureDetector(
                  onTap: () {
                    Get.to(SignInPage());
                  },
                  child: Text('See All Activity'),
                )
              ],
            ),
          ),
          Column(
            children: List.generate(
                20,
                (index) => Card(
                      child: Column(
                        children: [
                          ListTile(
                              leading: Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width / 2,
                            child: Row(
                              children: [Icon(Icons.save), Text('DCEF345281')],
                            ),
                          )),
                        ],
                      ),
                    )),
          )
        ])));
  }
}
