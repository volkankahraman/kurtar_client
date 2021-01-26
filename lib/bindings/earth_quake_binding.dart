import 'package:get/get.dart';

import 'package:kurtar_client/controllers/earth_quake_controller.dart';

class EarthQuakeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EarthQuakeController>(
      () => EarthQuakeController(),
    );
  }
}
