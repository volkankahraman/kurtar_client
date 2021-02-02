import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:kurtar_client/views/chat_view.dart';
import 'package:kurtar_client/app/modules/nearCitizens/controllers/near_citizens_controller.dart';

class NearCitizensView extends GetView<NearCitizensController> {
  final NearCitizensController ncc = Get.find();
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => ncc.isChatActive.value
          ? ChatView()
          : Scaffold(
              appBar: AppBar(
                title: Text('Cankurtaran Paneli'),
                centerTitle: true,
              ),
              body: ncc.isFounded.value == false
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
                  : ListView.builder(
                      itemCount: ncc.connectedDevices.length,
                      itemBuilder: (context, i) {
                        return ListTile(
                          leading: Icon(
                            Icons.person,
                            size: 42.0,
                          ),
                          title: Text('Kazazede'),
                          subtitle: Text('Yakında'),
                          onTap: () {
                            ncc.connectDevice(ncc.connectedDevices[i]);
                          },
                        );
                      },
                    ),
            ),
    );
  }
}
