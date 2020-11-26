import 'package:get/get.dart';
import 'package:kurtar_client/controllers/beacon_controller.dart';

class BeaconBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BeaconController>(
      () => BeaconController(),
    );
  }
}
