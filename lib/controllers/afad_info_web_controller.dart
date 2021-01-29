import 'dart:io';

import 'package:get/get.dart';
import 'package:vibration/vibration.dart';
import 'package:webview_flutter/webview_flutter.dart';

class AfadInfoWebController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
    vibrate();
  }

  void vibrate() async {
    if (await Vibration.hasVibrator()) {
      Vibration.vibrate();
    }
  }

  @override
  void onClose() {}
}
