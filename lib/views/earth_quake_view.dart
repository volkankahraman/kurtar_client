import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:kurtar_client/controllers/earth_quake_controller.dart';
import 'package:kurtar_client/shared/list_item.dart';

class EarthQuakeView extends GetView<EarthQuakeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 250.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/earth_quake.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 8.0),
              child: Text(
                'Deprem Öncesi Yapılacaklar',
                style: TextStyle(fontSize: 24.0),
              ),
            ),
            ListItem(
              text:
                  'Yerleşim bölgeleri titizlikle belirlenmelidir. Kaygan ve ovalık bölgeler iskana açılmamalıdır. Konutlar gevşek toprağa sahip meyilli arazilere yapılmamalıdır.',
            ),
            ListItem(
              text:
                  'Yapılar deprem etkilerine karşı dayanıklı inşa edilmelidir.',
            ),
            ListItem(
              text:
                  'İmar planında konuta ayrılmış yerler dışındaki yerlere ev ve bina yapılmamalıdır.',
            ),
            ListItem(
              text:
                  'Dik yarların yakınına, dik boğaz ve vadilerin içine bina yapılmamalıdır.',
            ),
            ListItem(
              text:
                  'Çok kar yağan ve çığ gelen yamaçlarda bina yapılmamalıdır.',
            ),
            ListItem(
              text: 'Mevcut binaların dayanıklılıkları artırılmalıdır.',
            ),
            ListItem(
              text: 'Konutlara deprem sigortası yaptırılmalıdır.',
            ),
            ListItem(
              text:
                  'Dolap üzerine konulan eşya ve büro malzemeleri kayarak düşmelerini önlemek için plastik tutucu malzeme veya yapıştırıcılarla sabitlenmelidir.',
            ),
            ListItem(
              text: 'Konutlara deprem sigortası yaptırılmalıdır.',
            ),
            ListItem(
              text:
                  'Dolaplar ve devrilebilecek benzeri eşyalar birbirine ve duvara sabitlenmelidir. Eğer sabitlenen eşya ve duvar arasında boşluk kalıyorsa, çarpma etkisini düşürmek için araya bir dolgu malzemesi konulmalıdır.',
            ),
            ListItem(
              text:
                  'Tavan ve duvara asılan avize, klima vb. cihazlar bulundukları yere ağırlıklarını taşıyacak şekilde, duvar ve pencerelerden yeterince uzağa ve kanca ile asılmalıdır.',
            ),
            ListItem(
              text:
                  'İçinde ağır eşyalar bulunan dolap kapakları mekanik kilitler takılarak sıkıca kapalı kalmaları sağlanmalı.',
            ),
            ListItem(
              text:
                  'Tezgah üzerindeki kayabilecek beyaz eşyaların altına metal profil koyarak bunların kayması önlenmelidir.',
            ),
            ListItem(
              text:
                  'Zehirli, patlayıcı, yanıcı maddeler düşmeyecek bir konumda sabitlenmeli ve kırılmayacak bir şekilde depolanmalıdır. Bu maddelerin üzerlerine fosforlu, belirleyici etiketler konulmalıdır.',
            ),
            ListItem(
              text:
                  'Rafların önüne elastik bant ya da tel eklenebilir. Küçük nesneler ve şişeler, birbirlerine çarpmayacak ve devrilmeyecek şekilde, kutuların içine yerleştirilmelidir.',
            ),
            ListItem(
              text:
                  'Gaz kaçağı ve yangına karşı, gaz vanası ve elektrik sigortaları otomatik hale getirilmelidir.',
            ),
            ListItem(
              text:
                  'Binadan acilen çıkmak için kullanılacak yollardaki tehlikeler ortadan kaldırılmalı, bu yollar işaretlenmeli, çıkışı engelleyebilecek eşyalar çıkış yolu üzerinden kaldırılmalıdır.',
            ),
            ListItem(
              text:
                  'Geniş çıkış yolları oluşturulmalıdır. Dışa doğru açılan kapılar kullanılmalı, acil çıkış kapıları kilitli olmamalıdır. Acil çıkışlar aydınlatılmalıdır.',
            ),
            ListItem(
              text:
                  'Karyolalar pencerenin ve üzerine devrilebilecek ağır dolapların yanına konulmamalı, karyolanın üzerinde ağır eşya olan raf bulundurulmamalıdır.',
            ),
            ListItem(
              text:
                  'Tüm bireylerin katılımı ile (evde, iş yerinde, apartmanda, okulda) “Afete hazırlık planları” yapılmalı, her altı ayda bir bu plan gözden geçirilmelidir. Zaman zaman bu plana göre nasıl davranılması gerektiğinin tatbikatları yapılmalıdır.',
            ),
            ListItem(
              text:
                  'Bir afet ve acil durumda eve ulaşılamayacak durumlar için aile bireyleri ile iletişimin nasıl sağlanacağı, alternatif buluşma yerleri ve bireylerin ulaşabileceği bölge dışı bağlantı kişisi (ev, işyeri, okul içinde, dışında ve ya mahalle dışında) belirlenmelidir.',
            ),
            ListItem(
              text:
                  'Önemli evraklar (kimlik kartları, tapu, sigorta belgeleri, sağlık karnesi, diplomalar, pasaport, banka cüzdanı vb.) kopyaları hazırlanarak su geçirmeyecek bir şekilde saklanmalı, ayrıca bu evrakların bir örneği de bölge dışı bağlantı kişisinde bulunmalıdır.',
            ),
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: RaisedButton(
                  onPressed: () {},
                  child: Text('Deprem sırasında yapılacaklar'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
