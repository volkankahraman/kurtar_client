import 'dart:async';
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter_nearby_connections/flutter_nearby_connections.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

import 'package:kurtar_client/controllers/chat_controller.dart';
import 'package:kurtar_client/models/user.dart';

class NearCitizensController extends GetxController {
  RxList<User> user;
  RxList<Device> connectedDevices = RxList();
  NearbyService nearbyService;
  StreamSubscription receivedDataSubscription;

  ChatController ch = Get.put(ChatController());
  bool isInit = false;
  final selectedDevice = Device('', '', 0).obs;
  final isFounded = false.obs;
  final isChatActive = false.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    if (isInit == false) {
      init();
      isInit = true;
    }
  }

  void init() async {
    nearbyService = NearbyService();
    await nearbyService.init(
      serviceType: 'mp-connection',
      strategy: Strategy.P2P_CLUSTER,
      callback: (isRunning) async {
        if (isRunning) {
          await nearbyService.stopBrowsingForPeers();
          await nearbyService.startBrowsingForPeers();
        } else {
          print('Not running');
        }
      },
    );

    nearbyService.stateChangedSubscription(callback: (devicesList) {
      devicesList?.forEach((element) {
        isFounded.value = true;
        connectedDevices.clear();
        connectedDevices.addAll(devicesList);
        if (element.state.index == ConnectionState.active.index) {
          isChatActive.value = true;
        }
        print(
            " deviceId: ${element.deviceId} | deviceName: ${element.deviceName} | state: ${element.state}");
        Fluttertoast.showToast(
            msg:
                " deviceId: ${element.deviceId} | deviceName: ${element.deviceName} | state: ${element.state}");
      });
    });

    receivedDataSubscription =
        nearbyService.dataReceivedSubscription(callback: (data) {
      // print("dataReceivedSubscription: ${jsonEncode(data)}");
      Fluttertoast.showToast(msg: jsonEncode(data));
      ch.addMessage(senderType: 'RECIEVER', text: jsonEncode(data));
    });
  }

  void connectDevice(Device device) {
    nearbyService.invitePeer(
        deviceID: device.deviceId, deviceName: device.deviceName);
    selectedDevice.value = device;
  }

  void sendMessage(String text) {
    print(selectedDevice.value.deviceName);
    nearbyService.sendMessage(selectedDevice.value.deviceId, text);
  }

  void userSelected(User user) {}
  @override
  void onClose() {
    nearbyService.stopBrowsingForPeers();
    isFounded.value = false;
    isChatActive.value = false;
    receivedDataSubscription?.cancel();

    super.dispose();
  }
}
