import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:kurtar_client/controllers/afad_info_web_controller.dart';
import 'package:webview_flutter/webview_flutter.dart';

class AfadInfoWebView extends GetView<AfadInfoWebController> {
  final AfadInfoWebController aiwc = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: WebView(
          initialUrl: 'https://www.afad.gov.tr/afete-hazir-turkiye',
        ),
      ),
    );
  }
}
