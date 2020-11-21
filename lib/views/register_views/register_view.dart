import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kurtar_client/controllers/register_controller.dart';
import 'package:kurtar_client/routes/app_pages.dart';

class RegisterView extends GetView<RegisterController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("Üye Seçimi"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 20.0,
            ),
            InkWell(
              onTap: () {
                Get.toNamed(Routes.REGISTERCITIZEN);
              },
              child: Container(
                padding: const EdgeInsets.all(20.0),
                width: 300.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Column(
                  children: [
                    Text(
                      'VATANDAŞ',
                      style: TextStyle(
                        fontFamily: 'Lato',
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Image(
                        image: AssetImage('assets/images/citizen.png'),
                        fit: BoxFit.cover),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            InkWell(
              onTap: () {
                Get.toNamed(Routes.REGISTERSAVER);
              },
              child: Container(
                padding: const EdgeInsets.all(20.0),
                width: 300.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Column(
                  children: [
                    Text(
                      'CANKURTARAN',
                      style: TextStyle(
                        fontFamily: 'Lato',
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      width: 300.0,
                      child: Image(
                          image: AssetImage('assets/images/saver.png'),
                          fit: BoxFit.contain),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
