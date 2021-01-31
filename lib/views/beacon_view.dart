import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kurtar_client/controllers/beacon_controller.dart';
import 'package:kurtar_client/views/sonar_view.dart';
import 'package:kurtar_client/views/chat_view.dart';

class BeaconView extends GetView<BeaconController> {
  final BeaconController bc = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: bc.isChatActive.value ? ChatView() : SonarView(),
      ),
    );
  }
}

// SizedBox(
//             height: 250,
//             width: 250,
//             child: RawMaterialButton(
//               onPressed: () {},
//               elevation: 8.0,
//               fillColor: Colors.red[500],
//               shape: CircleBorder(),
//             ),
//           ),
