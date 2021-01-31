import 'package:get/get.dart';

class BeaconController extends GetxController {
  final isChatActive = false.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() async {
    super.onReady();
    await Future.delayed(Duration(seconds: 10));
    this.isChatActive.value = true;
  }

  @override
  void onClose() {}
}
