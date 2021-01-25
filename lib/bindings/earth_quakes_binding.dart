import 'package:get/get.dart';

import 'package:kurtar_client/controllers/earth_quakes_controller.dart';

class EarthQuakesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EarthQuakesController>(
      () => EarthQuakesController(),
    );
  }
}
