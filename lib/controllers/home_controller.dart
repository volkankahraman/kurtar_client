import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeController extends GetxController {
  final isPageOpened = false.obs;

  @override
  void onInit() {
    super.onInit();
    print('init');
  }

  @override
  void onReady() {
    super.onReady();
    print('ready');
  }

  @override
  void onClose() {}

  void setPageOpened() {
    this.isPageOpened.value = true;
  }

  void setPageClosed() {
    this.isPageOpened.value = false;
  }

  void navigateClosestPoint() async {
    double lat = 38.423733, long = 27.142826;
    String url = "https://www.google.com/maps/search/?api=1&query=$lat,$long";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
