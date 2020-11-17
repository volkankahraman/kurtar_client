import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kurtar_client/controllers/home_controller.dart';

import 'package:kurtar_client/routes/drawer_view.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("Kurtar"),
      ),
      endDrawer: DrawerView(),
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.0, -1.0),
            end: Alignment(0.0, 1.0),
            colors: [
              const Color(0xff677bff),
              const Color(0xff8b68ff),
              const Color(0xff537bff)
            ],
            stops: [0.0, 0.201, 1.0],
          ),
        ),
        padding: const EdgeInsets.all(30.0),
        child: SafeArea(
          child: Center(),
        ),
      ),
    );
  }
}
