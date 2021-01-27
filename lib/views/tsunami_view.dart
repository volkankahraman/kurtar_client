import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kurtar_client/controllers/tsunami_controller.dart';
import 'package:kurtar_client/shared/list_item.dart';

class TsunamiView extends GetView<TsunamiController> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Tsunami'),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Öncesi'),
              Tab(text: 'Sırasında'),
              Tab(text: 'Sonrasında'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 150.0,
                  ),
                  ListItem(
                    text:
                        ' Bulunduğunuz bölgenin tehlike altında olup olmadığını ve tam olarak deniz seviyesinden ne kadar yüksek olduğunu öğrenin.',
                  ),
                  ListItem(
                    text:
                        'Tsunami durumunda verilecek uyarılara aşina olun ki uyarıldığınız zaman hızla ne yapacağınızı bilerek harekete geçebilirsiniz.',
                  ),
                  ListItem(
                    text:
                        'Tüm ailenizin tsunami halinde ne yapacaklarını bildiklerinden emin olun.',
                  ),
                  ListItem(
                    text:
                        'Tsunami durumunda hangi rotayı izleyerek nereye gideceğinizi kararlaştırdığınız bir tahliye planı yapın.',
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 150.0,
                  ),
                  ListItem(
                    text:
                        'Yüksek bir tepe gibi olabildiğince yüksek bir yere çıkmaya çalışın.',
                  ),
                  ListItem(
                    text:
                        'Evinizin veya bulunduğunuz binanın elektrik, su ve gaz bağlantılarını kapatın.',
                  ),
                  ListItem(
                    text:
                        ' Resmi duyurulardan haberdar olabilmek için acil durum hattı (911), polis ve itfaiye ile iletişime geçip eğer mümkünse sürekli radyoyu dinlemeye devam edin.',
                  ),
                  ListItem(
                    text:
                        'Çığın daha yavaş, yüksekliğinin az olduğu kenar kısımlarına ulaşmaya çalışın.',
                  ),
                  ListItem(
                    text: 'Yetkili kişilerin verdiği yönergeleri dinleyin.',
                  ),
                  ListItem(
                    text: ' Sahilden uzak durun.',
                  ),
                  ListItem(
                    text:
                        'Sahildeyken deprem hissederseniz uyarının yapılmasını beklemeden, acilen sahilden uzaklaşın.',
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Gemi veya Tekne içindeyseniz;',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                  ListItem(
                    text: 'Yerel otoritelerle iletişim kurmaya çalışın.',
                  ),
                  ListItem(
                    text: 'Acil durum çantanızı yanınızdan ayırmayın.',
                  ),
                  ListItem(
                    text:
                        'Döneceğiniz kıyıda tsunami olmuşsa başka bir dönüş noktası seçip oraya dönün.',
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 150.0,
                  ),
                  ListItem(
                    text:
                        'Kendi durumunuzdan emin olduktan sonra çeevrenizdekilere yardım edin.',
                  ),
                  ListItem(
                    text:
                        'Yeterli bilginiz yoksa yardım etmek amacıyla başkalarına zarar verebilirsiniz. Bu nedenle ne yapacağınızı bilmediğiniz durumlarda ilgili kişileri çağırın.',
                  ),
                  ListItem(
                    text: 'Zarar görmüş binalardan uzak durun.',
                  ),
                  ListItem(
                    text:
                        'Evinize, yetkililer güvenli olduğunu söylemeden önce dönmeyin.',
                  ),
                  ListItem(
                    text:
                        'Tüketmeden önce su ve yiyeceklerinizin uygun sağlık koşulları taşıdığından emin olun.',
                  ),
                  ListItem(
                    text: 'Binaların elektrik ve gaz çıkışlarını kontrol edin.',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
