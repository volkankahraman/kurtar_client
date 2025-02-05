import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'package:kurtar_client/controllers/earth_quake_risk_controller.dart';

class EarthQuakeRiskView extends GetView<EarthQuakeRiskController> {
  @override
  Widget build(BuildContext context) {
    final EarthQuakeRiskController eqrc = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: Text('Deprem Riski'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            height: 250.0,
            child: GoogleMap(
              mapType: MapType.terrain,
              initialCameraPosition: CameraPosition(
                target: LatLng(38.7225274, 35.4874516),
                zoom: 5.0,
              ),
              onMapCreated: (GoogleMapController controller) {
                eqrc.controller.complete(controller);
              },
            ),
          ),
          SizedBox(width: double.infinity),
          Container(
            padding: EdgeInsets.all(8),
            width: double.infinity,
            child: RaisedButton(
              onPressed: eqrc.getLocation,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'Risk Hesapla',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ),
          Spacer(),
          Obx(
            () => (eqrc.isLoading.value)
                ? Container(
                    width: 100.0,
                    height: 100.0,
                    child: CircularProgressIndicator(
                      backgroundColor: Colors.red[500],
                      strokeWidth: 6.0,
                    ),
                  )
                : SizedBox(),
          ),
          Obx(
            () =>
                (!eqrc.isLoading.value && eqrc.riskMessage.value.group != null)
                    ? Container(
                        child: (eqrc.riskMessage.value.group == "group1" ||
                                eqrc.riskMessage.value.group == "group2")
                            ? Icon(
                                Icons.warning_rounded,
                                color: Colors.red,
                                size: 108.0,
                              )
                            : Icon(
                                Icons.info_outline_rounded,
                                color: Colors.blue,
                                size: 108.0,
                              ),
                      )
                    : SizedBox(),
          ),
          Obx(
            () =>
                (!eqrc.isLoading.value && eqrc.riskMessage.value.group != null)
                    ? Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Obx(
                          () => RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: "Şehriniz:",
                                  style: TextStyle(fontSize: 18.0)),
                              TextSpan(
                                text: " ${eqrc.city.value}",
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ]),
                          ),
                        ),
                      )
                    : SizedBox(),
          ),
          Obx(
            () =>
                (!eqrc.isLoading.value && eqrc.riskMessage.value.group != null)
                    ? Container(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          eqrc.riskMessage.value.message,
                          style: TextStyle(fontSize: 16.0),
                          textAlign: TextAlign.center,
                        ),
                      )
                    : SizedBox(),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
