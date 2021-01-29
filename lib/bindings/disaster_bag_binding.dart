import 'package:get/get.dart';

import 'package:kurtar_client/controllers/disaster_bag_controller.dart';

class DisasterBagBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DisasterBagController>(
      () => DisasterBagController(),
    );
  }
}
