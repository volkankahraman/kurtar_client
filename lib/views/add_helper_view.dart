import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:kurtar_client/controllers/add_helper_controller.dart';

class AddHelperView extends GetView<AddHelperController> {
  AddHelperController ahc = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Acil Durum Kişisi Ekle'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextField(),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RaisedButton(
                  onPressed: () {},
                  child: Icon(Icons.add),
                ),
              )
            ],
          ),
          Obx(
            () => ListView.builder(
              shrinkWrap: true,
              itemCount: ahc.contacList.length,
              itemBuilder: (context, i) => ListTile(
                leading: Icon(Icons.person_add),
                title: Text(ahc.contacList[i].displayName ?? 'Bekleyiniz...'),
                subtitle: Text(
                  (ahc.contacList[i].phones.length > 0)
                      ? ahc.contacList[i].phones.first.value
                      : '',
                ),
                onTap: () {},
              ),
            ),
          )
        ],
      ),
    );
  }
}
