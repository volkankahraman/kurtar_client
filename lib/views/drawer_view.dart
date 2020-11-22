import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kurtar_client/controllers/drawerController.dart';

import '../routes/app_pages.dart';

class DrawerView extends GetView {
  DrawerCustomController controller = Get.put(DrawerCustomController());

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'Kurtar',
              style: context.theme.textTheme.headline5,
            ),
          ),
          ListTile(
            trailing: Obx(
              () => Switch(
                value: controller.theme.value,
                onChanged: (value) {
                  controller.theme.value = value;
                },
              ),
            ),
            title: Text('Tema'),
            subtitle:
                controller.theme.value ? Text('Koyu Tema') : Text('Açık Tema'),
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('Hakkında'),
            onTap: () {
              // Get.offAndToNamed(Routes.LOGIN);
            },
          ),
          ListTile(
            leading: Icon(Icons.star_rate),
            title: Text('Uygulamayı Değerlendir'),
            onTap: () {
              // Get.offAndToNamed(Routes.LOGIN);
            },
          ),
          ListTile(
            leading: Icon(Icons.bug_report),
            title: Text('Hata Bildir'),
            onTap: () {
              // Get.offAndToNamed(Routes.LOGIN);
            },
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Çıkış Yap'),
            onTap: () {
              Get.offAndToNamed(Routes.LOGIN);
            },
          ),
        ],
      ),
    );
  }
}
