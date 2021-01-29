import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:kurtar_client/controllers/disaster_bag_controller.dart';
import 'package:kurtar_client/shared/list_item.dart';

class DisasterBagView extends GetView<DisasterBagController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Afet Çantası'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/afet_canta.jpg'),
            Container(
              padding: EdgeInsets.only(top: 16.0, left: 16.0),
              child: Text(
                'Gerekli İçerikler',
                style: TextStyle(fontSize: 20),
              ),
            ),
            ListItem(
              text:
                  'Bir kişiye üç gün yetecek kadar su (Bir kişinin içmesi ve temizliği için bir gün yetecek kadar su miktarı ortalama 4 litredir.)',
            ),
            ListItem(
              text:
                  'Bir kişiye üç gün yetecek miktarda bozulmaya dayanıklı gıda',
            ),
            ListItem(
              text: 'Pilli radyo',
            ),
            ListItem(
              text: 'El feneri',
            ),
            ListItem(
              text: 'Ekstra pil',
            ),
            ListItem(
              text: 'İlk yardım çantası',
            ),
            ListItem(
              text: 'Yardım çağırmak için düdük',
            ),
            ListItem(
              text: 'Mevsime uygun temiz giysi',
            ),
            ListItem(
              text: 'Konserve açacağı da içeren çok amaçlı çakı',
            ),
            ListItem(
              text: 'Önemli evraklar',
            ),
            ListItem(
              text: 'Kişisel hijyen malzemeleri',
            ),
            ListItem(
              text: 'Düzenli kullanılan ilaçlar',
            ),
            SizedBox(
              height: 40.0,
            )
          ],
        ),
      ),
    );
  }
}
