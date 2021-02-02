import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:kurtar_client/controllers/earth_quake_controller.dart';
import 'package:kurtar_client/shared/list_item.dart';

class EarthQuakeView extends GetView<EarthQuakeController> {
  @override
  Widget build(BuildContext context) {
    final EarthQuakeController eqc = Get.find();
    double screenHeight = MediaQuery.of(context).size.height;

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Deprem'),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Öncesi'),
              Tab(text: 'Sırasında'),
              Tab(text: 'Sonrasında'),
            ],
          ),
        ),
        body: TabBarView(children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 130.0,
                ),
                Hero(
                  tag: 'Deprem',
                  child: Container(
                    height: 200.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/earth_quake.jpg'),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.only(top: 15.0, left: 8.0),
                //   child: Text(
                //     'Deprem Öncesi Yapılacaklar',
                //     style: TextStyle(fontSize: 24.0),
                //   ),
                // ),
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
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 130.0,
                ),
                TabBar(
                  controller: eqc.controller,
                  tabs: <Widget>[
                    Tab(
                      text: "Bina İçerisinde",
                    ),
                    Tab(
                      text: "Açık Alanda",
                    ),
                    Tab(
                      text: "Araç İçerisinde",
                    ),
                  ],
                ),
                SingleChildScrollView(
                  child: Container(
                    height: screenHeight,
                    child: TabBarView(
                      controller: eqc.controller,
                      children: <Widget>[
                        SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ListItem(
                                text:
                                    'Sabitlenmemiş dolap, raf, pencere vb. eşyalardan uzak durulmalıdır.',
                              ),
                              ListItem(
                                text:
                                    'Varsa sağlam sandalyelerle desteklenmiş masa altına veya dolgun ve hacimli koltuk, kanepe, içi dolu sandık gibi koruma sağlayabilecek eşya yanına çömelerek hayat üçgeni oluşturulmalıdır.',
                              ),
                              ListItem(
                                text:
                                    'Baş iki el arasına alınarak veya bir koruyucu (yastık, kitap vb) malzeme ile korunmalıdır. Sarsıntı geçene kadar bu pozisyonda beklenmelidir.',
                              ),
                              ListItem(
                                text:
                                    'Güvenli bir yer bulup, diz üstü ÇÖK, Başını ve enseni koruyacak şekilde KAPAN, Düşmemek için sabit bir yere TUTUN',
                              ),
                              ListItem(
                                text:
                                    'Merdivenlere ya da çıkışlara doğru koşulmamalıdır.',
                              ),
                              ListItem(
                                text: 'Balkona çıkılmamalıdır.',
                              ),
                              ListItem(
                                text:
                                    'Balkonlardan ya da pencerelerden aşağıya atlanmamalıdır.',
                              ),
                              ListItem(
                                text: 'Kesinlikle asansör kullanılmamalıdır.',
                              ),
                              ListItem(
                                text:
                                    'Telefonlar acil durum ve yangınları bildirmek dışında kullanılmamalıdır.',
                              ),
                              ListItem(
                                text:
                                    'Kibrit, çakmak yakılmamalı, elektrik düğmelerine dokunulmamalıdır.',
                              ),
                              ListItem(
                                text:
                                    'Tekerlekli sandalyede isek tekerlekler kilitlenerek baş ve boyun korumaya alınmalıdır.',
                              ),
                              ListItem(
                                text:
                                    'Mutfak, imalathane, laboratuvar gibi iş aletlerinin bulunduğu yerlerde; ocak, fırın ve bu gibi cihazlar kapatılmalı, dökülebilecek malzeme ve maddelerden uzaklaşılmalıdır.',
                              ),
                              ListItem(
                                text:
                                    'Sarsıntı geçtikten sonra elektrik, gaz ve su vanalarını kapatılmalı, soba ve ısıtıcılar söndürülmelidir.',
                              ),
                              ListItem(
                                text:
                                    'Diğer güvenlik önlemleri alınarak gerekli olan eşya ve malzemeler alınarak bina daha önce tespit edilen yoldan derhal terk edilip toplanma bölgesine gidilmelidir.',
                              ),
                              ListItem(
                                text:
                                    'Okulda sınıfta ya da büroda ise sağlam sıra, masa altlarında veya yanında; koridorda ise duvarın yanına hayat üçgeni oluşturacak şekilde ÇÖK-KAPAN-TUTUN hareketi ile baş ve boyun korunmalıdır.',
                              ),
                              ListItem(
                                text:
                                    'Pencerelerden ve camdan yapılmış eşyalardan uzak durulmalıdır.',
                              ),
                            ],
                          ),
                        ),
                        SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ListItem(
                                text:
                                    'Enerji hatları ve direklerinden, ağaçlardan, diğer binalardan ve duvar diplerinden uzaklaşılmalıdır. Açık arazide çömelerek etraftan gelen tehlikelere karşı hazırlıklı olunmalıdır.',
                              ),
                              ListItem(
                                text:
                                    'Toprak kayması olabilecek, taş veya kaya düşebilecek yamaç altlarında bulunulmamalıdır. Böyle bir ortamda bulunuluyorsa seri şekilde güvenli bir ortama geçilmelidir.',
                              ),
                              ListItem(
                                text:
                                    'Binalardan düşebilecek baca, cam kırıkları ve sıvalara karşı tedbirli olunmalıdır.',
                              ),
                              ListItem(
                                text:
                                    'Toprak altındaki kanalizasyon, elektrik ve gaz hatlarından gelecek tehlikelere karşı dikkatli olunmalıdır.',
                              ),
                              ListItem(
                                text: 'Deniz kıyısından uzaklaşılmalıdır.',
                              ),
                            ],
                          ),
                        ),
                        SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ListItem(
                                text:
                                    'Bulunduğunuz yer güvenli ise; yolu kapatmadan sağa yanaşıp durulmalıdır. Kontak anahtarı yerinde bırakılıp, pencereler kapalı olarak araç içerisinde beklenmelidir. Sarsıntı durduktan sonra açık alanlara gidilmelidir.',
                              ),
                              ListItem(
                                text:
                                    'Araç meskun mahallerde ya da güvenli bir yerde değilse (ağaç ya da enerji hatları veya direklerinin yanında, köprü üstünde vb.); durdurulmalı, kontak anahtarı üzerinde bırakılarak terk edilmeli ve trafikten uzak açık alanlara gidilmelidir.',
                              ),
                              ListItem(
                                text:
                                    'Sarsıntı sırasında bir tünelin içindeyseniz ve çıkışa yakın değilseniz; araç durdurulup aşağıya inilmeli ve yanına yan yatarak ayaklar karına çekilip, ellerle baş ve boyun korunmalıdır. (ÇÖK-KAPAN-TUTUN)',
                              ),
                              ListItem(
                                text:
                                    'Kapalı bir otoparkta iseniz; araç dışına çıkılıp, yanına yan yatarak, ellerle baş ve boyun korunmalıdır. Yukarıdan düşebilecek tavan, tünel gibi büyük kitleler aracı belki ezecek ama yok etmeyecektir. Araç içinde olduğunuz takdirde, aracın üzerine düşen bir parça ile aracın içinde ezilebilirsiniz.',
                              ),
                              ListItem(
                                text:
                                    'Gerekmedikçe, kesinlikle metro ve trenden inilmemelidir. Elektriğe kapılabilirsiniz veya diğer hattan gelen başka bir metro yada tren size çarpabilir.',
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
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
                  height: 130.0,
                ),
                Container(
                  height: 250.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/earth_quake.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                TabBar(
                  controller: eqc.controller,
                  tabs: <Widget>[
                    Tab(
                      text: "Kapalı Alanda",
                    ),
                    Tab(
                      text: "Açık Alanda",
                    ),
                    Tab(
                      text: "Yıkıntı Atında",
                    ),
                  ],
                ),
                SingleChildScrollView(
                  child: Container(
                    height: screenHeight,
                    child: TabBarView(
                      controller: eqc.controller,
                      children: <Widget>[
                        SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ListItem(
                                text: 'Önce kendi emniyetinizden emin olun.',
                              ),
                              ListItem(
                                text:
                                    'Sonra çevrenizde yardım edebileceğiniz kimse olup olmadığını kontrol edin.',
                              ),
                              ListItem(
                                text:
                                    'Depremlerden sonra çıkan yangınlar oldukça sık görülen ikincil afetlerdir. Bu nedenle eğer gaz kokusu alırsanız, gaz vanasını kapatın. Camları ve kapıları açın. Hemen binayı terk edin. ',
                              ),
                              ListItem(
                                text: 'Dökülen tehlikeli maddeleri temizleyin.',
                              ),
                              ListItem(
                                text:
                                    'Yerinden oynayan telefon ahizelerini telefonun üstüne koyun.',
                              ),
                              ListItem(
                                text:
                                    'Acil durum çantanızı yanınıza alın, mahalle buluşma noktanıza doğru harekete geçin.',
                              ),
                              ListItem(
                                text:
                                    'Radyo ve televizyon gibi kitle iletişim araçlarıyla size yapılacak uyarıları dinleyin.',
                              ),
                              ListItem(
                                text:
                                    'Cadde ve sokakları  acil yardım araçları için boş bırakın.',
                              ),
                              ListItem(
                                text:
                                    'Artçı depremler hasarlı binalarda zarara yol açabilir. Bu nedenle sarsıntılar tamamen bitene kadar hasarlı binalara girilmemelidir. Artçı depremler sırasında da ana depremde yapılması gerekenler yapılmalıdır.',
                              ),
                            ],
                          ),
                        ),
                        SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ListItem(
                                text:
                                    'Çevrenizdeki hasara dikkat ederek bunları not edin.',
                              ),
                              ListItem(
                                text:
                                    'Hasarlı binalardan ve enerji nakil hatlarından uzak durun.',
                              ),
                              ListItem(
                                text:
                                    'Önce yakın çevrenizde acil yardıma gerek duyanlara yardım edin.',
                              ),
                              ListItem(
                                text: 'Sonra mahalle toplanma noktanıza gidin.',
                              ),
                              ListItem(
                                text:
                                    'Yardım çalışmalarına katılın. Özel ilgiye ihtiyacı olan afetzedelere -yaşlılar, bebekler, hamileler, engelliler- yardımcı olun.',
                              ),
                            ],
                          ),
                        ),
                        SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ListItem(
                                text: 'Paniklemeden durumunuzu kontrol edin.',
                              ),
                              ListItem(
                                text:
                                    'Hareket kabiliyetiniz kısıtlanmışsa çıkış için hayatınızı riske atacak hareketlere kalkışmayın. Biliniz ki kurtarma ekipleri en kısa zamanda size ulaşmak için çaba gösterecektir.',
                              ),
                              ListItem(
                                text:
                                    'Enerjinizi en tasarruflu şekilde kullanmak için hareketlerinizi kontrol altında tutun.',
                              ),
                              ListItem(
                                text:
                                    'El ve ayaklarınızı kullanabiliyorsanız su, kalorifer, gaz tesisatlarına, zemine vurmak suretiyle varlığınızı duyurmaya çalışın.',
                              ),
                              ListItem(
                                text:
                                    'Sesinizi kullanabiliyorsanız kurtarma ekiplerinin seslerini duymaya ve onlara seslenmeye çalışınız. Ancak enerjinizi kontrollü kullanın.',
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
