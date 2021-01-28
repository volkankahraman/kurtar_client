import 'package:get/get.dart';

import 'package:kurtar_client/controllers/earth_quake_risk_controller.dart';

class EarthQuakeRiskBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EarthQuakeRiskController>(
      () => EarthQuakeRiskController(),
    );
  }
}
