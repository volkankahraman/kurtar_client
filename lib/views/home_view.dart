import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kurtar_client/app/views/views/home_body_view.dart';
import 'package:kurtar_client/app/views/views/panel_view.dart';
import 'package:kurtar_client/controllers/home_controller.dart';

import 'package:kurtar_client/views/drawer_view.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class HomeView extends GetView<HomeController> {
  final HomeController hc = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      endDrawer: DrawerView(),
      body: Obx(
        () => SlidingUpPanel(
          borderRadius: !hc.isPageOpened.value
              ? BorderRadius.only(
                  topLeft: Radius.circular(42),
                  topRight: Radius.circular(42),
                )
              : BorderRadius.only(),
          maxHeight: MediaQuery.of(context).size.height,
          minHeight: 480.0,
          body: HomeBodyView(),
          panelBuilder: (sc) => PanelView(sc),
          parallaxEnabled: true,
          parallaxOffset: 0.5,
          onPanelOpened: hc.setPageOpened,
          onPanelClosed: hc.setPageClosed,
          boxShadow: [
            BoxShadow(
              blurRadius: 10.0,
              color: Colors.black38,
            ),
          ],
        ),
      ),
    );
  }
}
