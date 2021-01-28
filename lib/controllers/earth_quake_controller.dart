import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EarthQuakeController extends GetxController
    with SingleGetTickerProviderMixin {
  TabController controller;

  @override
  void onInit() {
    super.onInit();
    controller = TabController(vsync: this, length: 3);
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
