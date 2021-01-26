import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:kurtar_client/controllers/earth_quake_controller.dart';

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
      body: Column(
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
            text: 'Yapılar deprem etkilerine karşı dayanıklı inşa edilmelidir.',
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
            text: 'Çok kar yağan ve çığ gelen yamaçlarda bina yapılmamalıdır.',
          ),
          ListItem(
            text: 'Mevcut binaların dayanıklılıkları artırılmalıdır.',
          ),
          ListItem(
            text: 'Konutlara deprem sigortası yaptırılmalıdır.',
          ),
        ],
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  const ListItem({
    Key key,
    this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CircleAvatar(
            radius: 3.0,
            backgroundColor: Colors.white,
          ),
          Container(
            width: 300,
            child: Text(text),
          )
        ],
      ),
    );
  }
}
