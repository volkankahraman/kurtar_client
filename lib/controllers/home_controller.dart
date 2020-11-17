import 'package:get/get.dart';

class HomeController extends GetxController {
  final count = 0.obs;

  @override
  void onInit() {
    super.onInit();
    print('init');
  }

  @override
  void onReady() {
    super.onReady();
    print('ready');
  }

  @override
  void onClose() {}

  void increment() => count.value++;
}
