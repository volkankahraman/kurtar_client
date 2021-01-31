import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kurtar_client/routes/app_pages.dart';

class HomeBodyView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black54,
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
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
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              child: Text(''),
              color: Colors.pink,
            ),
          )
        ],
      ),
    );
  }
}
