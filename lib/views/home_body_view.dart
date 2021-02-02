import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kurtar_client/controllers/user_controller.dart';
import 'package:kurtar_client/routes/app_pages.dart';

class HomeBodyView extends GetView {
  final uc = Get.put(UserController());
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black54,
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Obx(
              () => uc.user.value.userType == "CITIZEN"
                  ? Container(
                      margin: EdgeInsets.only(top: 25.0),
                      child: Hero(
                        tag: 'emergency',
                        child: RawMaterialButton(
                          onPressed: () {
                            Get.toNamed(Routes.BEACON);
                          },
                          padding: EdgeInsets.all(48.0),
                          elevation: 8.0,
                          fillColor: Colors.red[500],
                          child: Text(
                            "Acil\nDurum",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20.0,
                            ),
                          ),
                          shape: CircleBorder(),
                        ),
                      ),
                    )
                  : Container(
                      margin: EdgeInsets.only(top: 25.0),
                      child: Center(
                        child: RawMaterialButton(
                          fillColor: Colors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(22.0),
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: 30.0, vertical: 15.0),
                          onPressed: () {
                            Get.toNamed(Routes.NEAR_CITIZENS);
                          },
                          child: Text(
                            'Çevredeki Kazazedeleri Bul',
                            style: TextStyle(fontSize: 18.0),
                          ),
                        ),
                      ),
                    ),
            ),
          ),
          Obx(
            () => Expanded(
              // flex: uc.user.value.userType == "CITIZEN" ? 5 : 4,
              flex: uc.user.value.userType == "CITIZEN" ? 5 : 7,
              child: Container(
                child: Text(''),
                color: Colors.pink,
              ),
            ),
          )
        ],
      ),
    );
  }
}
