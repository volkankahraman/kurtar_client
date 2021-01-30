import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:kurtar_client/app/modules/homeTest/controllers/home_test_controller.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class HomeTestView extends GetView<HomeTestController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('scrollable panel'),
      ),
      body: SlidingUpPanel(
        maxHeight: 700.0,
        border: Border.all(
          color: Colors.black,
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(42),
          topRight: Radius.circular(42),
        ),
        minHeight: 450.0,
        panel: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Container(
            height: 900.0,
            color: Colors.purple,
            child: Text(
              "This is the sliding Widget",
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
        body: Text("This is the Widget behind the sliding panel"),
      ),
    );
  }
}
