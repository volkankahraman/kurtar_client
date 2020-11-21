import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  final count = 0.obs;
  PageController pageController = PageController();

  nextPage() {
    pageController.nextPage(
      curve: Curves.easeIn,
      duration: Duration(milliseconds: 300),
    );
  }

  previousPage() {
    pageController.previousPage(
      curve: Curves.easeIn,
      duration: Duration(milliseconds: 300),
    );
  }

  showBirthDatePicker(context) {
    showDatePicker(
      context: context,
      locale: Locale("tr", ""),
      initialDate: DateTime(2000),
      firstDate: DateTime(1920),
      lastDate: DateTime(2004),
    );
  }

  @override
  void onInit() {}

  @override
  void onReady() {}

  @override
  void onClose() {}

  void increment() => count.value++;
}
