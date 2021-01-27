import 'package:get/get.dart';

import 'package:kurtar_client/controllers/flood_controller.dart';

class FloodBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FloodController>(
      () => FloodController(),
    );
  }
}
