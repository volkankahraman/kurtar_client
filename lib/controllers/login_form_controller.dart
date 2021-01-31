import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:kurtar_client/routes/app_pages.dart';

class LoginFormController extends GetxController {
  final username = ''.obs;
  final email = ''.obs;
  final password = ''.obs;
  final box = GetStorage();

  @override
  void onReady() {
    super.onReady();
    if (box.read('firstOpen')) {
      Get.toNamed(Routes.HOME);
    }
  }

  @override
  void onClose() {}
}
