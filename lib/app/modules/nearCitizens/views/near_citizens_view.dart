import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import 'package:kurtar_client/app/modules/nearCitizens/controllers/near_citizens_controller.dart';

class NearCitizensView extends GetView<NearCitizensController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Yakındaki Kazazedeler'),
        centerTitle: true,
      ),
      body: true
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: double.infinity,
                ),
                SvgPicture.asset('assets/images/empty.svg'),
                Text(
                  'Şuan çevrende kazazede bulunmuyor',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            )
          : ListView(
              children: [
                ListTile(
                  leading: Icon(
                    Icons.person,
                    size: 42.0,
                  ),
                  title: Text('Kazazede'),
                  subtitle: Text('Yakında'),
                  onTap: () {},
                )
              ],
            ),
    );
  }
}
