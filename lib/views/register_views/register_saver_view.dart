import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kurtar_client/controllers/register_controller.dart';
import 'package:kurtar_client/routes/app_pages.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';

class RegisterSaverView extends GetView {
  final RegisterController rc = Get.put(RegisterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Doğrulama'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Lütfen sizin için belirlenen doğrulama kodunu girin"),
              SizedBox(
                height: 22.0,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: PinCodeTextField(
                  autofocus: true,
                  highlight: true,
                  highlightColor: Colors.blue,
                  defaultBorderColor: Colors.black,
                  hasTextBorderColor: Colors.green,
                  maxLength: 6,
                  onTextChanged: (text) {
                    print('$text');
                  },
                  onDone: (text) {
                    Get.toNamed(Routes.REGISTERCITIZEN, arguments: "SAVER");

                    // Get.offNamed(Routes.REGISTERCITIZEN, arguments: "SAVER");
                    // print("DONE CONTROLLER ${controller.text}");
                  },
                  // hasError: true,
                  pinBoxWidth: 50,
                  pinBoxHeight: 64,
                  hasUnderline: true,
                  wrapAlignment: WrapAlignment.spaceAround,
                  pinBoxDecoration:
                      ProvidedPinBoxDecoration.defaultPinBoxDecoration,
                  pinTextStyle: TextStyle(fontSize: 22.0),
                  pinTextAnimatedSwitcherTransition:
                      ProvidedPinBoxTextAnimation.scalingTransition,
//                    pinBoxColor: Colors.green[100],
                  pinTextAnimatedSwitcherDuration: Duration(milliseconds: 150),
//                    highlightAnimation: true,
                  highlightAnimationBeginColor: Colors.black,
                  highlightAnimationEndColor: Colors.white12,
                  keyboardType: TextInputType.number,
                  controller: rc.tec,
                ),
              ),
            ],
          ),
        ));
  }
}
