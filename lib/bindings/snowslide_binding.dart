import 'package:get/get.dart';

import 'package:kurtar_client/controllers/snowslide_controller.dart';

class SnowslideBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SnowslideController>(
      () => SnowslideController(),
    );
  }
}
