import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kurtar_client/controllers/home_controller.dart';
import 'package:kurtar_client/controllers/user_controller.dart';
import 'package:kurtar_client/routes/app_pages.dart';
import 'package:kurtar_client/shared/banner_body.dart';
import 'package:kurtar_client/shared/banner_title.dart';
import 'package:kurtar_client/shared/disaster_card.dart';

class PanelView extends GetView {
  PanelView(this.sc);
  final ScrollController sc;
  final HomeController hc = Get.put(HomeController());
  final uc = Get.put(UserController());

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: sc,
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
                  DisasterCard(
                    title: 'Deprem',
                    assetImage: AssetImage('assets/images/earth_quake.jpg'),
                    onPressed: () {
                      Get.toNamed(Routes.EARTH_QUAKE);
                    },
                  ),
                  DisasterCard(
                    title: 'Sel',
                    assetImage: AssetImage('assets/images/flood.jpg'),
                    onPressed: () {
                      Get.toNamed(Routes.FLOOD);
                    },
                  ),
                  DisasterCard(
                    title: 'Yangın',
                    assetImage: AssetImage('assets/images/wildfire.jpg'),
                    onPressed: () {
                      Get.toNamed(Routes.WILDFIRE);
                    },
                  ),
                  DisasterCard(
                    title: 'Terör',
                    assetImage: AssetImage('assets/images/terror.webp'),
                    onPressed: () {
                      Get.toNamed(Routes.TERROR);
                    },
                  ),
                  DisasterCard(
                    title: 'Çığ',
                    assetImage: AssetImage('assets/images/snowslide.jpg'),
                    onPressed: () {
                      Get.toNamed(Routes.SNOWSLIDE);
                    },
                  ),
                  DisasterCard(
                    title: 'Tsunami',
                    assetImage: AssetImage('assets/images/tsunami.jpg'),
                    onPressed: () {
                      Get.toNamed(Routes.TSUNAMI);
                    },
                  ),
                ],
              ),
            ),
          ),
          BannerTitle(text: 'En Yakın Toplanma Alanı'),
          InkWell(
            onTap: () {
              hc.navigateClosestPoint(context);
            },
            child: BannerBody(
              assetImage: AssetImage('assets/images/konum.jpg'),
            ),
          ),
          BannerTitle(text: 'Bulunduğum Yerin Deprem Riski'),
          InkWell(
            onTap: () {
              Get.toNamed(Routes.EARTH_QUAKE_RISK);
            },
            child: BannerBody(
              assetImage: AssetImage('assets/images/risk.jpg'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 30.0, top: 10.0, right: 30.0, bottom: 10.0),
            child: Obx(
              () => uc.user.value.userType == "CITIZEN"
                  ? Row(
                      children: [
                        RaisedButton(
                          color: Colors.red[500],
                          onPressed: () {
                            Get.toNamed(Routes.ADD_HELPER);
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 9.0, vertical: 16.0),
                            child: Column(
                              children: [
                                Icon(
                                  Icons.person_add,
                                  size: 36.0,
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text('Acil Durum Kişileri'),
                              ],
                            ),
                          ),
                        ),
                        Spacer(),
                        RaisedButton(
                          onPressed: () {
                            Get.toNamed(Routes.DISASTER_BAG);
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 17.0, vertical: 8.0),
                            child: Column(
                              children: [
                                Icon(
                                  Icons.shopping_bag,
                                  size: 36.0,
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                  'Afet ve Acil\nDurum Çantası',
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  : SizedBox(),
            ),
          ),
          BannerTitle(text: 'En Son Depremler'),
          InkWell(
            onTap: () {
              Get.toNamed(Routes.EARTH_QUAKES);
            },
            child: BannerBody(
              assetImage: AssetImage('assets/images/kandilli.jpg'),
            ),
          ),
          BannerTitle(text: 'AFAD'),
          InkWell(
            onTap: () {
              Get.toNamed(Routes.AFAD_WEB);
            },
            child: BannerBody(
              assetImage: AssetImage('assets/images/afad.png'),
            ),
          ),
          SizedBox(
            height: 50.0,
          ),
        ],
      ),
    );
  }
}
