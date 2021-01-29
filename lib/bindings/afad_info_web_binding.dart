import 'package:get/get.dart';

import 'package:kurtar_client/controllers/afad_info_web_controller.dart';

class AfadInfoWebBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AfadInfoWebController>(
      () => AfadInfoWebController(),
    );
  }
}
