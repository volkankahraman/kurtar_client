import 'package:get/get.dart';

import 'package:kurtar_client/controllers/add_helper_controller.dart';

class AddHelperBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddHelperController>(
      () => AddHelperController(),
    );
  }
}
