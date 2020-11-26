import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kurtar_client/controllers/beacon_controller.dart';

class BeaconView extends GetView<BeaconController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BeaconView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'BeaconView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
