import 'package:get/get.dart';

import 'package:kurtar_client/app/modules/homeTest/controllers/home_test_controller.dart';

class HomeTestBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeTestController>(
      () => HomeTestController(),
    );
  }
}
