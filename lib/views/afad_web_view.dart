import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:kurtar_client/controllers/afad_web_controller.dart';
import 'package:webview_flutter/webview_flutter.dart';

class AfadWebView extends GetView<AfadWebController> {
  final AfadWebController awc = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: WebView(
          initialUrl: 'https://gonullu.afad.gov.tr/',
        ),
      ),
    );
  }
}
