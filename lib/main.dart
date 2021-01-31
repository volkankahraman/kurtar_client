import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kurtar_client/routes/app_pages.dart';
import 'package:get_storage/get_storage.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async {
  await GetStorage.init();
  final box = GetStorage();

  String firstPage = AppPages.INITIAL;

  if (box.hasData('firstOpen')) {
    if (box.read('firstOpen'))
      firstPage = Routes.HOME;
    else
      firstPage = Routes.LOGIN;
  }

  runApp(
    GetMaterialApp(
      title: "Kurtar",
      theme: ThemeData.dark(),
      initialRoute: firstPage,
      getPages: AppPages.routes,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale("tr", ""),
      ],
    ),
  );
}
