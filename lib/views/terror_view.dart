import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:kurtar_client/controllers/terror_controller.dart';
import 'package:kurtar_client/shared/list_item.dart';

class TerrorView extends GetView<TerrorController> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Terör Saldırısı'),
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
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Hazırlıklı olun',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Bir saldırı sırasında insanların çoğu, birşey yapamayacak kadar şaşkına dönüyor. Leach, dünyanın çeşitli yerlerinde hayatı tehlikeye sokan durumları incelediğinde, insanların yalnızca yüzde 15\'inin hayatta kalmalarına yardımcı olabilecek şekilde hareket ettiğini gördü.',
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '"Kafamızdaki modele göre tepki veririz. Çevremizde olanlara hemen doğrudan tepki vermeyiz. İşte bizi korunmasız kılan da budur." diyor Leach.',
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Olup biteni anlamak için geçen zaman ölümcül olabilir. Ama insan en kötü senaryoları daha önceden kafasından geçirmişse, o zaman bu süreç daha hızlanabilir.',
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
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Hızlı tepki verin',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Bir saldırı sırasında insanların çoğu, birşey yapamayacak kadar şaşkına dönüyor. Leach, dünyanın çeşitli yerlerinde hayatı tehlikeye sokan durumları incelediğinde, insanların yalnızca yüzde 15\'inin hayatta kalmalarına yardımcı olabilecek şekilde hareket ettiğini gördü.',
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'İnsanların yüzde 75 kadarı etraflarında olan bitenlere tepki gösteremeyecek kadar büyük bir şaşkınlık içine düşüyor. Diğer yüzde 10\'u ise kendilerinin hayatta kalma ihtimallerini azaltacak ve başkalarına da engel olur şekilde hareket ediyor.',
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
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Birbirinize yardım edin',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Saldırı yerinden kaçabildikten sonra tetikte olmak büyük önem taşıyor. Olabildiğince uzağa kaçın, sağlam bir yere saklanmaya çalışın ve yardım için en yakın yetkiliye başvurun.',
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Çevredeki büyük gruplara katılmak ve toplu ulaşım araçlarını kullanmak tehlikeli olabilir.',
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Her zaman için, ikinci bir bombanın veya eylemin planlanmış olabileceğini hesaba katın.Burada kilit nokta, durum hakkında daha bilgili olabilecek polis yetkililerinin ve diğer görevlilerin tavsiyesine başvurmak.',
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
