import 'dart:async';

import 'package:geocoder/geocoder.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class EarthQuakeRiskController extends GetxController {
  Location location = new Location();

  bool _serviceEnabled;
  PermissionStatus _permissionGranted;
  LocationData _locationData;
  final city = "".obs;
  Completer<GoogleMapController> controller = Completer();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() async {
    super.onReady();
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
  }

  void getLocation() async {
    _locationData = await location.getLocation();
    var addresses = await Geocoder.local.findAddressesFromCoordinates(
        Coordinates(_locationData.latitude, _locationData.longitude));
    this.city.value = addresses.first.adminArea;
    print(city.value);

    final GoogleMapController controller = await this.controller.future;
    controller.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
          target: LatLng(_locationData.latitude, _locationData.longitude),
          zoom: 14.4746,
        ),
      ),
    );
  }

  @override
  void onClose() {}
}
