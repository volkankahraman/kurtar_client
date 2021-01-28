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
          Obx(
            () => (eqrc.city.value != "")
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
            () => (eqrc.city.value != "")
                ? Container(
                    child: Icon(
                      Icons.warning_rounded,
                      color: Colors.red,
                      size: 108.0,
                    ),
                  )
                : SizedBox(),
          ),
          Obx(
            () => (eqrc.city.value != "")
                ? Container(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "En riskli bölgede yaşıyorsunuz deprem çantası hazırlayıp klavuz bölümünden deprem ile ilgili daha fazla bilgi alabilirsiniz.",
                      style: TextStyle(fontSize: 16.0),
                      textAlign: TextAlign.center,
                    ),
                  )
                : SizedBox(),
          ),
        ],
      ),
    );
  }
}
