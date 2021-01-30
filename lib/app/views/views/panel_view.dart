import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kurtar_client/controllers/home_controller.dart';
import 'package:kurtar_client/routes/app_pages.dart';
import 'package:kurtar_client/shared/banner_body.dart';
import 'package:kurtar_client/shared/banner_title.dart';
import 'package:kurtar_client/shared/disaster_card.dart';
import 'package:url_launcher/url_launcher.dart';

class PanelView extends GetView {
  PanelView(this.sc);
  final ScrollController sc;
  final HomeController hc = Get.put(HomeController());

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
              height: 120.0,
              width: double.infinity,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  DisasterCard(),
                  DisasterCard(),
                  DisasterCard(),
                  DisasterCard(),
                ],
              ),
            ),
          ),
          BannerTitle(text: 'En Yakın Toplanma Alanı'),
          InkWell(
            onTap: hc.navigateClosestPoint,
            child: BannerBody(
              assetImage: AssetImage('assets/images/konum.jpg'),
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
          Padding(
            padding: const EdgeInsets.only(
                left: 30.0, top: 10.0, right: 30.0, bottom: 10.0),
            child: Row(
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
            height: 100.0,
          ),
        ],
      ),
    );
  }
}
