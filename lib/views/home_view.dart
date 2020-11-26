import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kurtar_client/controllers/home_controller.dart';
import 'package:kurtar_client/routes/app_pages.dart';

import 'package:kurtar_client/views/drawer_view.dart';

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
        constraints: BoxConstraints.expand(),
        // decoration: BoxDecoration(
        //   gradient: LinearGradient(
        //     begin: Alignment(0.0, -1.0),
        //     end: Alignment(0.0, 1.0),
        //     colors: [
        //       const Color(0xff677bff),
        //       const Color(0xff8b68ff),
        //       const Color(0xff537bff)
        //     ],
        //     stops: [0.0, 0.201, 1.0],
        //   ),
        // ),
        padding: const EdgeInsets.all(30.0),
        child: SafeArea(
          child: RawMaterialButton(
            onPressed: () {
              Get.toNamed(Routes.BEACON);
            },
            elevation: 8.0,
            fillColor: Colors.blueAccent,
            child: Text(
              "Acil Durum",
              style: context.textTheme.headline4,
            ),
            shape: CircleBorder(),
          ),
        ),
      ),
    );
  }
}

// Material(
//               elevation: 10,
//               color: Colors.blue,
//               child: ClipOval(
//                 child: InkWell(
//                   splashColor: Colors.red, // inkwell color
//                   child: SizedBox(
//                     width: 200,
//                     height: 200,
//                     child: Center(
//                       child: Text(
//                         "Acil Durum",
//                         style: context.textTheme.headline5,
//                       ),
//                     ),
//                   ),
//                   onTap: () {},
//                 ),
//               ),
//             ),
