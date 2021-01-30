import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:kurtar_client/controllers/add_helper_controller.dart';
import 'package:kurtar_client/shared/list_item.dart';

class AddHelperView extends GetView<AddHelperController> {
  AddHelperController ahc = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Acil Durum Kişisi Ekle'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Obx(
                () => ListView.builder(
                  shrinkWrap: true,
                  itemCount: ahc.savedList.length,
                  itemBuilder: (context, i) => ahc.savedList[i] != ''
                      ? ListTile(
                          title: Text(ahc.savedList[i]),
                          trailing: IconButton(
                            icon: Icon(
                              Icons.remove_circle_outline,
                              color: Colors.red,
                            ),
                            onPressed: () {
                              ahc.removeFromSavedList(ahc.savedList[i]);
                            },
                          ),
                        )
                      : SizedBox(),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: ahc.tec,
                      decoration: InputDecoration(hintText: '(555) 555 .. ..'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 55.0,
                      height: 50.0,
                      child: RaisedButton(
                        onPressed: ahc.addToSavedList,
                        child: Icon(Icons.add),
                      ),
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
                    title:
                        Text(ahc.contacList[i].displayName ?? 'Bekleyiniz...'),
                    subtitle: Text(
                      (ahc.contacList[i].phones.length > 0)
                          ? ahc.contacList[i].phones.first.value
                          : '',
                    ),
                    onTap: () {
                      ahc.setValueOfField(ahc.contacList[i]);
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
