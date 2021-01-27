import 'package:get/get.dart';
import 'package:kurtar_client/controllers/tsunami_controller.dart';

class TsunamiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TsunamiController>(
      () => TsunamiController(),
    );
  }
}
