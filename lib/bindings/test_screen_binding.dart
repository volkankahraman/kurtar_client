import 'package:get/get.dart';

import 'package:kurtar_client/controllers/test_screen_controller.dart';

class TestScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TestScreenController>(
      () => TestScreenController(),
    );
  }
}
