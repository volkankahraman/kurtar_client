import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kurtar_client/routes/app_pages.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Kurtar",
      theme: ThemeData.dark(),
      initialRoute: AppPages.INITIAL,
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
