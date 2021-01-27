import 'package:get/get.dart';
import 'package:kurtar_client/controllers/terror_controller.dart';

class TerrorBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TerrorController>(
      () => TerrorController(),
    );
  }
}
