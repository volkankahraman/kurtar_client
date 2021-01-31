import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:kurtar_client/controllers/test_screen_controller.dart';

class TestScreenView extends GetView<TestScreenController> {
  final TestScreenController tsc = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test Ekranı'),
        centerTitle: true,
      ),
      body: Obx(
        () => tsc.view.value == 'first'
            ? Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Material(
                        color: Colors.orange,
                        elevation: 9,
                        child: SizedBox.expand(
                          child: InkWell(
                            child: Center(
                                child: Text(
                              'Alıcı',
                              style: TextStyle(
                                fontSize: 36.0,
                              ),
                            )),
                            onTap: tsc.startRecieverView,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Material(
                        color: Colors.blue,
                        elevation: 9,
                        child: SizedBox.expand(
                          child: InkWell(
                            child: Center(
                                child: Text(
                              'Yayıncı',
                              style: TextStyle(
                                fontSize: 36.0,
                              ),
                            )),
                            onTap: tsc.startSenderView,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            : Column(
                children: [
                  RaisedButton(
                    onPressed: tsc.startFirstView,
                    child: Icon(Icons.arrow_back),
                  ),
                  Text('Heey'),
                  Center(
                    child: RaisedButton(
                      onPressed: tsc.initilizeNearby,
                      child: Text('Başlat'),
                    ),
                  )
                ],
              ),
      ),
    );
  }
}
