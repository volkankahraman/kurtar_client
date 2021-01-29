import 'package:get/get.dart';

import 'package:kurtar_client/controllers/afad_web_controller.dart';

class AfadWebBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AfadWebController>(
      () => AfadWebController(),
    );
  }
}
