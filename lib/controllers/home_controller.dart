import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:location/location.dart';
import 'package:kurtar_client/controllers/http_controller.dart';
import 'package:sweetalert/sweetalert.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeController extends GetxController {
  final isPageOpened = false.obs;
  final HttpController _httpController = Get.put(HttpController());
  LocationData _locationData;
  Location location = Location();
  bool _serviceEnabled;
  PermissionStatus _permissionGranted;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  void setPageOpened() {
    this.isPageOpened.value = true;
  }

  void setPageClosed() {
    this.isPageOpened.value = false;
  }

  void navigateClosestPoint(BuildContext context) async {
    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return;
      }
    }

    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return;
      }
    }

    _locationData = await location.getLocation();

    var result = await _httpController.getLocalPoints(_locationData);

    if (result['point'] != null) {
      double lat = result['point']['latitude'];
      double long = result['point']['longitude'];

      String url = "https://www.google.com/maps/search/?api=1&query=$lat,$long";

      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    } else {
      SweetAlert.show(context,
          title: "${result['message']}", style: SweetAlertStyle.error);
    }
  }
}
