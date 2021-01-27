import 'package:get/get.dart';

import 'package:kurtar_client/controllers/wildfire_controller.dart';

class WildfireBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WildfireController>(
      () => WildfireController(),
    );
  }
}
