import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app_pages.dart';

class DrawerView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'Menu',
              style: context.theme.textTheme.headline5,
            ),
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Çıkış Yap'),
            onTap: () {
              Get.offAndToNamed(Routes.LOGIN);
            },
          )
        ],
      ),
    );
  }
}
