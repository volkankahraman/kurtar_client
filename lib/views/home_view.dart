import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kurtar_client/controllers/home_controller.dart';
import 'package:kurtar_client/routes/app_pages.dart';

import 'package:kurtar_client/views/drawer_view.dart';

class HomeView extends GetView<HomeController> {
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
      body: Container(
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
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30.0, bottom: 10.0),
              child: SizedBox(
                height: 150.0,
                child: Hero(
                  tag: 'emergency',
                  child: RawMaterialButton(
                    onPressed: () {
                      Get.toNamed(Routes.BEACON);
                    },
                    elevation: 8.0,
                    fillColor: Colors.red[500],
                    child: Padding(
                      padding: const EdgeInsets.all(38.0),
                      child: Text(
                        "Acil\nDurum",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                    shape: CircleBorder(),
                  ),
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0, top: 40.0),
                        child: Text(
                          'Önemli Afetler',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 12.0, left: 30.0),
                        child: SizedBox(
                          height: 100.0,
                          width: double.infinity,
                          child: ListView(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(right: 15.0),
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8)),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 15.0),
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8)),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 15.0),
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8)),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 15.0),
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0, top: 12.0),
                        child: Text(
                          'En Yakın Toplanma Alanı',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 30.0, top: 12.0, right: 30.0),
                        child: Container(
                          height: 120,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0, top: 12.0),
                        child: Text(
                          'AFAD',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 30.0, top: 12.0, right: 30.0, bottom: 30.0),
                        child: Container(
                          height: 100,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
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
