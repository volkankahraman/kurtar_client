import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:kurtar_client/controllers/earth_quakes_controller.dart';
import 'package:timeline_list/timeline.dart';
import 'package:timeline_list/timeline_model.dart';

class EarthQuakesView extends GetView<EarthQuakesController> {
  @override
  Widget build(BuildContext context) {
    final EarthQuakesController eqc = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: Text('Deprem Listesi'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          ListTile(
            title: FlatButton(
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text('Konum / Tarih'),
              ),
              onPressed: eqc.toggleDateSort,
            ),
            trailing: FlatButton(
              child: Text('Büyüklük'),
              onPressed: eqc.toggleEarthSort,
            ),
          ),
          // Timeline.builder(itemBuilder: (context, i) {
          //   return TimelineModel(

          //   );
          // }),
          // Expanded(
          //   child: Timeline(
          //     position: TimelinePosition.Left,
          //     children: eqc.items,
          //   ),
          // ),
          Expanded(
            child: Obx(
              () => Timeline.builder(
                lineColor: Colors.white,
                lineWidth: 2.0,
                position: TimelinePosition.Left,
                itemBuilder: (context, i) {
                  return TimelineModel(
                    Container(
                      height: 120.0,
                      child: Center(
                        child: ListTile(
                          title: Text(
                              '${eqc.earthQuakeList[i].sehir} - ${eqc.earthQuakeList[i].yer}'),
                          subtitle: Text(
                              '${eqc.earthQuakeList[i].tarih} - ${eqc.earthQuakeList[i].saat}'),
                          // leading: Text(''),
                          trailing: Text(eqc.earthQuakeList[i].buyukluk),
                        ),
                      ),
                    ),
                    iconBackground: Colors.redAccent,
                    icon: Icon(
                      Icons.api_outlined,
                    ),
                  );
                },
                itemCount: eqc.earthQuakeList.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
