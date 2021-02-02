import 'dart:async';
import 'dart:io';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_nearby_connections/flutter_nearby_connections.dart';
import 'package:flutter_sms/flutter_sms.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:kurtar_client/controllers/chat_controller.dart';
import 'package:kurtar_client/controllers/user_controller.dart';

import 'package:get/get.dart';

class BeaconController extends GetxController {
  final isChatActive = false.obs;

  //Nearby api
  NearbyService nearbyService;
  final selectedDevice = Device('', '', 0).obs;
  StreamSubscription receivedDataSubscription;

  ChatController ch = Get.put(ChatController());
  UserController uc = Get.put(UserController());

  @override
  void onInit() {
    super.onInit();
  }

  void sendSms() async {
    print(uc.user.value.recipents);
    String _result = await sendSMS(
            message: uc.user.value.message, recipients: uc.user.value.recipents)
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
          init();
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

    // await Future.delayed(Duration(seconds: 10));

    // this.isChatActive.value = true;
  }

  void init() async {
    nearbyService = NearbyService();
    await nearbyService.init(
        serviceType: 'mp-connection',
        strategy: Strategy.P2P_CLUSTER,
        callback: (isRunning) async {
          if (isRunning) {
            await nearbyService.stopAdvertisingPeer();
            await nearbyService.startAdvertisingPeer();

            await nearbyService.stopBrowsingForPeers();
            await nearbyService.startBrowsingForPeers();
          }
        });

    nearbyService.stateChangedSubscription(callback: (devicesList) {
      devicesList?.forEach((element) {
        print(
            " deviceId: ${element.deviceId} | deviceName: ${element.deviceName} | state: ${element.state}");
        Fluttertoast.showToast(
            msg:
                " deviceId: ${element.deviceId} | deviceName: ${element.deviceName} | state: ${element.state}");
        isChatActive.value = true;
        if (Platform.isAndroid) {
          if (element.state == SessionState.connected) {
            nearbyService.stopBrowsingForPeers();
          } else {
            nearbyService.startBrowsingForPeers();
          }
        }
      });
    });

    receivedDataSubscription =
        nearbyService.dataReceivedSubscription(callback: (data) {
      Fluttertoast.showToast(msg: jsonEncode(data));
      ch.addMessage(senderType: 'RECIEVER', text: jsonEncode(data));
    });
  }

  void sendMessage(String text) {
    nearbyService.sendMessage(selectedDevice.value.deviceId, text);
  }

  @override
  void onClose() {
    nearbyService.stopBrowsingForPeers();
    nearbyService.stopAdvertisingPeer();
    isChatActive.value = false;
    receivedDataSubscription?.cancel();
    super.dispose();
  }
}
