import 'package:flutter/material.dart';
import 'package:flutter_sms/flutter_sms.dart';
import 'package:get/get.dart';

class BeaconController extends GetxController {
  final isChatActive = false.obs;
  String message = "This is a test message!";
  List<String> recipents = ["1234567890", "5556787676"];

  @override
  void onInit() {
    super.onInit();
  }

  void sendSms() async {
    String _result = await sendSMS(message: message, recipients: recipents)
        .catchError((onError) {
      print(onError);
    });
    print(_result);
  }

  @override
  void onReady() async {
    super.onReady();
    Get.defaultDialog(
      radius: 8.0,
      confirm: RaisedButton(
        onPressed: sendSms,
        child: Text('Onayla'),
      ),
      cancel: RaisedButton(
        onPressed: () {
          Get.close(1);
        },
        color: Colors.red[500],
        child: Text('İptal'),
      ),
      titleStyle: TextStyle(height: 1.8),
      title: 'Listesine mesajınız ve konumunuz iletilsin mi ?',
      content: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text('Bu işlev listenize sms göndermektedir. (Ücretlendirilebilir)')
          ],
        ),
      ),
    );
    await Future.delayed(Duration(seconds: 10));
    // this.isChatActive.value = true;
  }

  @override
  void onClose() {}
}
