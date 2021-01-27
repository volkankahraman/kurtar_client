import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:kurtar_client/controllers/snowslide_controller.dart';
import 'package:kurtar_client/shared/list_item.dart';

class SnowslideView extends GetView<SnowslideController> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Çığ'),
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
                        'Çığ riskine karşı nasıl hazırlanacağınızı ve korunacağınızı öğrenebileceğiniz eğitim programlarına katılın. İlk yardım vb. tamamlayıcı eğitimleri de alın.',
                  ),
                  ListItem(
                    text:
                        'Yeni yerleşim yeri olarak, çığ riski taşıyan bölgeleri seçmeyin.',
                  ),
                  ListItem(
                    text: 'Mevcut yapılarınızı sigortalatın.',
                  ),
                  ListItem(
                    text:
                        'Çığ tehlikesinin artmasını engellemek için, yamaçlardaki ağaçları, bitki örtüsünü ve ormanları koruyun.',
                  ),
                  ListItem(
                    text:
                        'Kar yağan aylarda hava ve yol durumu raporlarını dikkatlice izleyin.',
                  ),
                  ListItem(
                    text:
                        'Aile Afet Planınızı hazırlarken çığ riskini göz önünde bulundurun.',
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Çığ oluşabilecek alanlarda iseniz;',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                  ListItem(
                    text:
                        'En tehlikeli çığların 30°- 40° eğimli yamaçlarda oluşmasından dolayı bu tür yamaçlara daha fazla dikkat edilmelidir.',
                  ),
                  ListItem(
                    text:
                        'Eğer arazide iken çökme sesi, kırılma ve oturma sesi benzeri sesler duyuyorsanız, çığ oluşumu anına çok yakınsınız demektir.',
                  ),
                  ListItem(
                    text:
                        'Yüksek riskli bölgeleri geçerken grubun emniyetli yerde beklemesi ve birer birer geçilmesi doğrudur.',
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
                    text: 'Soğukkanlılığınızı muhafaza etmeye çalışın.',
                  ),
                  ListItem(
                    text:
                        'Çığın büyüklüğüne, hızına, patikanın genişliğine ve etrafta bulunan araçlara bakarak en kısa sürede riskli alanı terk edin ve daha güvenli yerlere ulaşmaya çalışın.',
                  ),
                  ListItem(
                    text:
                        'Sırt çantası taşıyanların çığın topuğu civarında yüzeyde kalma şansı daha fazladır; bu nedenle sırt çantanızı çıkarmayın.',
                  ),
                  ListItem(
                    text:
                        'Çığın daha yavaş, yüksekliğinin az olduğu kenar kısımlarına ulaşmaya çalışın.',
                  ),
                  ListItem(
                    text:
                        'Bağırarak veya başka ses kaynakları (korna, çan, ıslık vb.) kullanarak çevrenizdekileri uyarmaya çalışın.',
                  ),
                  ListItem(
                    text:
                        'Kayak yaparken çığın önünde kalırsanız çığın rotası dışına doğru kaymaya çalışın.',
                  ),
                  ListItem(
                    text:
                        'Eğer kayak yaparken çığa yakalanmak kesin ise kayak sopalarını ve kayakları çıkarıp atın, sabit ağaç gibi bir cisme tutunmaya çalışın.',
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Araç içindeyseniz;',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                  ListItem(
                    text: 'Motoru durdurun ve ışıkları söndürün.',
                  ),
                  ListItem(
                    text:
                        'Araçtaki oksijen miktarını korumak için sigara içmeyin, ateş yakmayın.Telsiz varsa çağrı yapın ve telsizi alıcı konumunda sürekli açık tutun.',
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
                        'Karda ses iletimi az olmasına rağmen eğer yüzeye yakın olduğunuzu hissediyorsanız bağırın. ',
                  ),
                  ListItem(
                    text: 'Enerjinizi dikkatli kullanın.',
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Araç içindeyseniz;',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                  ListItem(
                    text:
                        'Dışarıya ses (korna) ve ışık verecek herhangi bir alet (fener vb.) kullanın.',
                  ),
                  ListItem(
                    text:
                        'Araçta bir çubuk veya benzeri bir alet varsa kar içinde yukarı doğru batırın; kurtarmaya gelecek olanların çubuğu görmelerini sağlayın.',
                  ),
                  ListItem(
                    text:
                        'Aracı çevreleyen karı kazmaya çalışın; ancak kazarken kendinizi güvende hissetmiyorsanız emniyetiniz için araç içinde kalın.',
                  ),
                  ListItem(
                    text:
                        'Mümkünse 155 Polis ve 156 Jandarma hatlarını arayarak durumu bildirin.',
                  ),
                  ListItem(
                    text:
                        'İlk yardım eğitiminiz yoksa ve zorunlu olmadıkça, çığdan kurtarılan kişileri hareket ettirmeyin.',
                  ),
                  ListItem(
                    text:
                        'Çığdan etkilenen kişilerin öncelikle üzerini örtün; doğrudan sıcak bir ortama kesinlikle sokmayın.',
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
