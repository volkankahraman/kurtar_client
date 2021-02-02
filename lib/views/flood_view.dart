import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:kurtar_client/controllers/flood_controller.dart';

class FloodView extends GetView<FloodController> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Sel'),
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
                    tag: 'Sel',
                    child: Container(
                      height: 200.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/flood.jpg'),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Bulunduğunuz yerin sele maruz kalma riskini öğrenin. Sel yataklarına yerleşmemeye özen gösterin. Sel konusundaki uyarıları radyo ve TV’den mutlaka takip edin. Gerektiğinde Meteoroloji Genel Müdürlüğü’nden telefonla bilgi alın.',
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Kısa süreli yoğun yağışların ani sele, uzun süreli yağışların ise nehirlerin taşmasına neden olacağını unutmayın. Sel sigortası yaptırın. Aile Afet Planınızı hazırlarken sel riskini göz önünde bulundurun.',
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Gerektiğinde kullanmak üzere kum, kum torbaları, naylon, çivi, kontrplak, tahta vb. inşaat malzemelerini ve bir alet sandığını hazır bulundurun.',
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Sel uyarısı yapıldığında:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Ani su baskınının oluşabileceğini unutmayın. Böyle bir olasılık baş gösterirse yüksek bir yere çıkmak üzere harekete geçin. Bunun için bir talimat beklemeyin. Dere yatağı, nehir, hendek, vadi ve kanyon gibi yerlerden uzak durun.',
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Her an tahliye olabilecek şekilde hazırlıklı olun; afet ve acil durum çantanızı yanınıza alın. Şebeke suyunun kirlenme ihtimaline karşı evde temiz su bulundurun. Elektrikli ev aletlerini fişten çekin; sigortaları ve vanaları kapatın.',
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Uyarıların yapıldığı tarihlerde, yanınıza değerli eşya ve evraklarınızı da alarak, mümkünse yüksek kesimlerde yaşayan yakınlarınıza kısa süreliğine misafir olun. Komşularınızı ve yakınlarınızı uyarın. Aracınız varsa güvenli yere alın. Evcil hayvanlarınızın da güvende olduğundan emin olun.',
                      textAlign: TextAlign.justify,
                    ),
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
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Sakin olun. Sel bölgesini hemen terk ederek yüksek ve güvenli bölgelere gidin. Elektrik kaynaklarından uzak durun. Sel sırasında araç içindeyseniz su ile kaplı yoldan gitmeye çalışmayın. Sel sularının bulunduğu bölgelerde araç kullanmayın. Aracınızda herhangi bir arıza oluştuysa hemen terk ederek yüksek bir yere çıkın. Özellikle geceleri, selin tehlikelerini görmek güçleşeceğinden daha dikkatli olun. Bu nedenlerle sel sularına girmeyin, çocuklarınızın sel ve yağmur suları ile oynamalarına müsaade etmeyin. Sel sularının temas ettiği yiyecekleri yemeyin.',
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Evinizin çevresindeki emniyet ve istinat duvarlarının yıkılabileceğini düşünerek bu bölümlerden uzak durun. Kopmuş elektrik telleriyle temas halinde olabilecek su birikintilerinden uzak durun. Binada gaz sızıntısı olabileceğinden, herhangi bir türde elektrikli alet ve ışık kullanmayın. Işığa ihtiyacınız olduğunda pilli fener kullanın.',
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Tahliyeye hazırlanıyorsanız dikkat etmeniz gerekenler:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Evinizi emniyete alın. Zamanınız varsa dış mekan mobilyanızı toplayın. Özel eşyanızı üst katlara çıkarın, Ana şalter veya vanalardan tüm tesisatlarınızı kapatın. Elektrikteki fişleri çekin. Islaksanız veya sudaysanız elektrikli ekipmana asla dokunmayın. Yanınıza afet ve acil durum çantanızı alın. Çantanızda mutlaka bir miktar kuru gıda ve içecek; ilk yardım malzemeleri, ailenizin ihtiyaç duyabileceği veya kullandığı ilaçları bulundurun.',
                      textAlign: TextAlign.justify,
                    ),
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
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Geri dönün uyarısını almadan kesinlikle evlerinize dönmeyin. Özel ilgiye ihtiyacı olan komşularınıza yardımcı olmayı unutmayın. Binalarınızın duvarları, katlardaki zeminlerde veya diğer yerlerde herhangi bir hasarı olup olmadığını kontrol edin. Binalarınızı kontrol ederken su geçirmez ayakkabı ve pille çalışan el fenerleri kullanın. Tavanı sıva ve benzeri şeylerin dökülmesi riskine karşı kontrol edin. Sigorta işlemleri için zarar gören yerlerin resmini çekin. ',
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Evinizde gaz sızıntısı; suyun altında kalmış elektrik aksamı, fırın, ocak ve elektrikle çalışan eşyaların olabileceğini düşünerek tedbirli olun. Sel sırasında evinizde kalmış yiyecekler varsa bunları kesinlikle kullanmayın (konserveler dahil). Evinizdeki suları binanın daha fazla zarar görmemesi için yavaş yavaş boşaltın. Sele maruz kalmış binadaki kopmuş hiçbir kabloya ve elektrikli aletlere dokunmayın. Elektriğe kapılma riski nedeniyle eşyalarınızı kurtarmak adına da olsa suyla kaplı alanlara girmeyin. ',
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Sel sonrası salgın hastalıklar yaygın olarak görülür. Koşullara uygun kişisel hijyen önlemlerinizi (örneğin plastik çizme, plastik ve/veya lateks eldiven, vb.) almadan sel suyu ile temas etmiş hiçbir malzemeye dokunmayın. Sel suyuna temas etmiş giysi ve eşyalarınızı çok iyi şekilde yıkayıp temizleyin; kişisel hijyeninize dikkat edin.',
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      ' Sel sırasında yaralandıysanız sağlık birimlerine başvurun. Sele maruz kalmış bölgelerde kaynağını bilmediğiniz suları kullanmayın. Mümkünse şişe suyu kullanın. Lağım çukuru ve kuyular, su tankları ve atık su sistemlerinin sel sonrası insan sağlığına zarar vermemeleri için mutlaka yetkililere kontrol ettirin.',
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
