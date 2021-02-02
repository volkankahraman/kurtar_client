import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_nearby_connections/flutter_nearby_connections.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class TestScreenController extends GetxController {
  final view = "first".obs;
  NearbyService nearbyService;

  StreamSubscription subscription;
  StreamSubscription receivedDataSubscription;

  bool isInit = false;

  String getStateName(SessionState state) {
    switch (state) {
      case SessionState.notConnected:
        return "disconnected";
      case SessionState.connecting:
        return "waiting";
      default:
        return "connected";
    }
  }

  String getButtonStateName(SessionState state) {
    switch (state) {
      case SessionState.notConnected:
      case SessionState.connecting:
        return "Connect";
      default:
        return "Disconnect";
    }
  }

  Color getStateColor(SessionState state) {
    switch (state) {
      case SessionState.notConnected:
        return Colors.black;
      case SessionState.connecting:
        return Colors.grey;
      default:
        return Colors.green;
    }
  }

  Color getButtonColor(SessionState state) {
    switch (state) {
      case SessionState.notConnected:
      case SessionState.connecting:
        return Colors.green;
      default:
        return Colors.red;
    }
  }

  void startRecieverView() {
    view.value = 'browser';
  }

  void startSenderView() {
    view.value = 'advertiser';
  }

  void startFirstView() {
    view.value = 'first';
  }

  void initilizeNearby() async {
    nearbyService = NearbyService();

    await nearbyService.init(
      serviceType: 'mp-connection',
      strategy: Strategy.P2P_CLUSTER,
      callback: (isRunning) async {
        if (isRunning) {
          if (view.value == "browser") {
            await nearbyService.stopBrowsingForPeers();
            await nearbyService.startBrowsingForPeers();
          } else if (view.value == "advertiser") {
            await nearbyService.stopAdvertisingPeer();
            await nearbyService.startAdvertisingPeer();

            await nearbyService.stopBrowsingForPeers();
            await nearbyService.startBrowsingForPeers();
          }
        }
      },
    );
    subscription =
        nearbyService.stateChangedSubscription(callback: (deviceList) {
      deviceList?.forEach((element) {
        print(
            'deviceId: ${element.deviceId} | deviceName: ${element.deviceName} | state: ${element.state}');
        Fluttertoast.showToast(
            msg:
                'deviceId: ${element.deviceId} | deviceName: ${element.deviceName} | state: ${element.state}');

        if (Platform.isAndroid) {
          if (element.state == SessionState.connected) {
            nearbyService.stopBrowsingForPeers();
          } else {
            nearbyService.startBrowsingForPeers();
          }
        }
      });

      receivedDataSubscription =
          nearbyService.dataReceivedSubscription(callback: (data) {
        print("dataReceivedSubscription:${jsonEncode(data)}");
        Fluttertoast.showToast(msg: jsonEncode(data));
      });
    });
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    initilizeNearby();
  }

  @override
  void onClose() {}
}
