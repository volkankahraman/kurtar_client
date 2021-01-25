import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kurtar_client/models/earth_quake.dart';
import 'package:http/http.dart' as http;
import 'package:timeline_list/timeline_model.dart';

class EarthQuakesController extends GetxController {
  @override
  void onReady() {
    super.onReady();
    this.getEarthQuakes();
  }

  List<TimelineModel> items = [
    TimelineModel(
      ListTile(
        title: Text('İzmir'),
        subtitle: Text('27.01.2021'),
        // leading: Text(''),
        trailing: Text('1.1'),
      ),
      iconBackground: Colors.redAccent,
      icon: Icon(
        Icons.api_outlined,
      ),
    ),
    TimelineModel(
      Text('Deprem'),
      iconBackground: Colors.redAccent,
      icon: Icon(
        Icons.api_outlined,
      ),
    ),
  ];

  final RxList<EarthQuake> earthQuakeList = [
    EarthQuake(
      sehir: 'Bekleyiniz...',
      yer: '',
      buyukluk: '',
      tarih: '',
      saat: '',
    )
  ].obs;
  bool earthAscSorted = false;
  bool dateAscSorted = false;

  void getEarthQuakes() async {
    var url = 'https://turkiyedepremapi.herokuapp.com/api';
    var response = await http.get(url);
    final List t = json.decode(response.body);
    earthQuakeList.clear();
    for (var item in t) {
      EarthQuake eq = EarthQuake.fromJson(item);
      earthQuakeList.add(eq);
    }
  }

  void toggleEarthSort() {
    if (!earthAscSorted) {
      this._sortByEarthQuakesAsc();
    } else {
      this._sortByEarthQuakesDesc();
    }
  }

  void _sortByEarthQuakesAsc() {
    earthQuakeList.sort((a, b) => a.buyukluk.compareTo(b.buyukluk));
    earthAscSorted = true;
  }

  void _sortByEarthQuakesDesc() {
    earthQuakeList.sort((a, b) => b.buyukluk.compareTo(a.buyukluk));
    earthAscSorted = false;
  }

  void toggleDateSort() {
    if (!dateAscSorted) {
      this._sortByDatesAsc();
    } else {
      this._sortByDateDesc();
    }
  }

  void _sortByDatesAsc() {
    earthQuakeList.sort((a, b) => a.tarih.compareTo(b.tarih));
    dateAscSorted = true;
  }

  void _sortByDateDesc() {
    earthQuakeList.sort((a, b) => b.tarih.compareTo(a.tarih));
    dateAscSorted = false;
  }
}
