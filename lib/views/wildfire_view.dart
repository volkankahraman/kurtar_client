import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:kurtar_client/controllers/wildfire_controller.dart';
import 'package:kurtar_client/shared/list_item.dart';

class WildfireView extends GetView<WildfireController> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Yangın'),
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
                  Hero(
                    tag: 'Yangın',
                    child: Container(
                      height: 200.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/wildfire.jpg'),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Konutlarda Yangını Önleyici Tedbirler',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                  ListItem(
                    text: 'Tavan arası ve bodrumlar temiz tutulmalıdır,',
                  ),
                  ListItem(
                    text: 'Çocukların ateşle oynamasına izin verilmemelidir,',
                  ),
                  ListItem(
                    text:
                        'Soba, kalorifer ve mutfak ocakları dikkatli kullanılmalıdır,',
                  ),
                  ListItem(
                    text:
                        'Yanıcı maddeler konutun uygun yerinde saklanılmalıdır,',
                  ),
                  ListItem(
                    text:
                        'Elektrik tesisatından çıkabilecek yangınlara karşı tesisatın düzenli bakımı yaptırılmalıdır,',
                  ),
                  ListItem(
                    text:
                        'Sıvasız, çatlak, hatalı inşa edilmiş ve dolmuş bacalar kullanılmamalıdır,',
                  ),
                  ListItem(
                    text:
                        'Konutlarda da yangın söndürme tüpü bulundurulmalı, düzenli bakımları yaptırılmalı ve nasıl kullanılacağı öğrenilmelidir.',
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Yapısal Bakımdan Yangından Korunma',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                  ListItem(
                    text:
                        'Yapılarda yanmaz veya yanması güç yapı malzemeleri kullanılmalıdır,',
                  ),
                  ListItem(
                    text:
                        'Yangının yayılmasını önlemek amacıyla, yangın bölümleri oluşturulmalıdır,',
                  ),
                  ListItem(
                    text:
                        'Dumanın yayılmasını önlemek için duvardan sızmaları önleyici tedbirler alınmalıdır,',
                  ),
                  ListItem(
                    text:
                        'Yangının etkilerinden korunmuş kısa yangın çıkış yolları sağlanmalıdır,',
                  ),
                  ListItem(
                    text:
                        'Ateşleyici ve yanıcı malzeme kaynakları birbirinden ayrı yerlerde depolanmalıdır,',
                  ),
                  ListItem(
                    text:
                        'Her an çıkabilecek yangınlar için yangın söndürme cihazları çalışır durumda bulundurulmalıdır.',
                  ),
                  //   Padding(
                  //     padding: const EdgeInsets.all(8.0),
                  //     child: Text(
                  //       'Kısa süreli yoğun yağışların ani sele, uzun süreli yağışların ise nehirlerin taşmasına neden olacağını unutmayın. Sel sigortası yaptırın. Aile Afet Planınızı hazırlarken sel riskini göz önünde bulundurun.',
                  //       textAlign: TextAlign.justify,
                  //     ),
                  //   ),
                  //   Padding(
                  //     padding: const EdgeInsets.all(8.0),
                  //     child: Text(
                  //       'Gerektiğinde kullanmak üzere kum, kum torbaları, naylon, çivi, kontrplak, tahta vb. inşaat malzemelerini ve bir alet sandığını hazır bulundurun.',
                  //       textAlign: TextAlign.justify,
                  //     ),
                  //   ),
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
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Soğutarak Söndürme',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                  ListItem(
                    text:
                        'Su ile Soğutma: Yanıcı maddeyi boğma ve yanıcı maddeden ısı alarak yangının söndürülmesinde en büyük etken olmaktadır.',
                  ),
                  ListItem(
                    text:
                        'Yanıcı Maddeyi Dağıtma: Yanan maddenin dağıtılmasıyla yangın nedeni olan yüksek ısı bölünür, bölünen ısı düşer ve yangı yavaş yavaş söner.',
                  ),
                  ListItem(
                    text:
                        'Kuvvetli Üfleme: Yanan madde üzerinde kuvvetli olarak üflenen hava alevin sönmesine ve yanan maddenin ısısının düşmesine neden olmaktadır.',
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Havayı Kesme',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                  ListItem(
                    text:
                        'Örtme: Katı maddeler (kum, toprak, halı, kilim vb) ve kimyasal bileşikler (köpük, klor, azot vb) kullanılarak yanan maddenin oksijen ile temasının kesilmesi ile yapılan söndürmedir. Akaryakıt yangınlarına örtü oluşturan kimyasal kullanılmaktadır.',
                  ),
                  ListItem(
                    text:
                        'Boğma: Yangının oksijenle temasının kesilmesi veya azaltılması amacıyla yapılan işlemdir. Özellikle kapalı yerlerde oluşan yangınlara uygulanır.',
                  ),
                  ListItem(
                    text:
                        'Yanıcı Maddenin Ortadan Kaldırılması: Yanma koşullarından olan yanıcı maddenin ortadan kalkması sonucu yangının söndürülmesidir.',
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
                        '1. derece yanıklarlarda derinin en üst tabakasında hasarlanma vardır. Güneş yanıkları bu tarz yanıktır. Derinin soğutulması, topikal anestezik ilaçlar nemlendirci ve yağlı kremler tedavide kullanılabilir. Yanık bölgesindeki deri 1-2 hafta içinde yüzeyel olarak dökülür.',
                  ),
                  ListItem(
                    text:
                        '2. derece yanıklarda deri üst tabakası tamamen yanmıştır. İyileşme deri alt tabakasındaki yağ bezleri, ter bezleri ve kıl köklerinden hücrelerin çoğalmasıyla oluşur. İyileşmeyi sağlayan deri eklerindeki kayıp miktarına göre 2. derece yanıklar yüzeyel ve derin olarak iki alt sınıfa ayrılır. Yüzeyel 2. derece yanıkta iz kalmaz ancak derin 2. derece yanık iz bırakarak iyileşir. Yanık bölgesindeki su dolu kabarcıklar korunmaya çalışılmalıdır. Uygun pansumanlar ile takip edilir. İyileşme süresi yüzyel yanıklarda 1 hafta ile 10 gün arasındadır.',
                  ),
                  ListItem(
                    text:
                        '3. derece yanıklarda deriyi yenileyecek deri ekleri kalmamıştır. İyleşme yanık kenarlarından gelişen deri ile oluşur ve rahatsız edecek yara izi gelişir. Kötü yara iyileşmesini önlemek için yanık bölgesine deri nakli yapılabilir. Küçük alanlar pansumanlarla iz bırakarak iyileşirken büyük alanların iyileşmesi çok zaman alır ve bu süre içinde enfeksiyon gelişirse hayati tehlike oluşabilir. Eklem ve boyun bölgesindeki yanılar eklem ve boyun hareketlerinin kısıtlanmasına neden olabilir. Deri nakli iyileşmeyi hızlandırır ve fonksiyon kaybı gelişmesini önler. Deri nakli yapılan alanlarda iz daha az gelişir.',
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '2. derece ve 3. derece yanıkların tedavisi yanık uzmanı tarafından yapılmalıdır ve kapalı pansumanlar ile takip edilmelidir.',
                      textAlign: TextAlign.justify,
                    ),
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
