import 'package:get/get.dart';

import 'package:kurtar_client/app/modules/nearCitizens/controllers/near_citizens_controller.dart';

class NearCitizensBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NearCitizensController>(
      () => NearCitizensController(),
    );
  }
}
