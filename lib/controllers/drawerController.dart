import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DrawerCustomController extends GetxController {
  final theme = false.obs;

  @override
  void onInit() {
    super.onInit();
    theme.listen((theme) {
      if (theme) {
        Get.changeTheme(ThemeData.dark());
      } else {
        Get.changeTheme(ThemeData.light());
      }
    });
    print('init');
  }

  @override
  void onReady() {
    super.onReady();
    print('ready');
  }

  @override
  void onClose() {}
}
