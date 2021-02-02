import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kurtar_client/controllers/drawerController.dart';
import 'package:kurtar_client/controllers/user_controller.dart';

class DrawerView extends GetView {
  final DrawerCustomController controller = Get.put(DrawerCustomController());

  @override
  Widget build(BuildContext context) {
    final uc = Get.put(UserController());
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
          Obx(
            () => uc.user.value.userType == "CITIZEN"
                ? ListTile(
                    leading: Icon(Icons.message),
                    title: Text('Acil Durum Mesajı Belirle'),
                    onTap: () {
                      Get.defaultDialog(
                        radius: 8.0,
                        confirm: ConstrainedBox(
                          constraints:
                              const BoxConstraints(minWidth: double.infinity),
                          child: RaisedButton(
                            onPressed: () {
                              Get.close(1);
                            },
                            child: Text('Kaydet'),
                          ),
                        ),
                        titleStyle: TextStyle(height: 1.8),
                        title: 'Mesaj Ekle',
                        content: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              TextField(
                                decoration: InputDecoration(
                                  labelText: 'Mesaj',
                                ),
                                onSubmitted: (value) {
                                  uc.user.value.message = value;
                                  Get.close(1);
                                },
                                autofocus: true,
                                textCapitalization:
                                    TextCapitalization.sentences,
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  )
                : SizedBox(),
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('Hakkında'),
            onTap: () {
              Get.defaultDialog(
                title: 'Hakkında',
                content: Container(
                  padding: EdgeInsets.only(
                    top: 20.0,
                    left: 8,
                    right: 8,
                    bottom: 20.0,
                  ),
                  child: Text(
                    'Afet anında hayati tehlikede olan insanlar çevresine işaret ışığı(beacon) gibi konum ve bilinmesi gereken bilgileri yayınlayacaktır. Aynı zamanda yakınlara, gerekli kurumlara ve belirlenen  nsanlara bu bilgileri iletecektir.',
                  ),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.share),
            title: Text('Paylaş'),
            onTap: controller.share,
          ),
          ListTile(
            leading: Icon(Icons.star_rate),
            title: Text('Uygulamayı Değerlendir'),
            onTap: () {
              controller.rateApp(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.bug_report),
            title: Text('Hata Bildir'),
            onTap: controller.sendFeedback,
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Çıkış Yap'),
            onTap: controller.logOut,
          ),
        ],
      ),
    );
  }
}
