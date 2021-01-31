import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rate_my_app/rate_my_app.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:kurtar_client/routes/app_pages.dart';
import 'package:get_storage/get_storage.dart';

class DrawerCustomController extends GetxController {
  final theme = true.obs;
  final box = GetStorage();

  RateMyApp _rateMyApp = RateMyApp(
    preferencesPrefix: 'rateMyApp_pro',
    minDays: 3,
    minLaunches: 7,
    remindDays: 2,
    remindLaunches: 5,
  );

  @override
  void onInit() {
    super.onInit();
    theme.listen((theme) {
      if (theme) {
        Get.changeTheme(ThemeData.dark());
      } else {
        Get.changeTheme(ThemeData.light());
      }
    });
  }

  void share() {
    Share.share(
        'Acil durum ve afet gibi durumlarda bilgilenemek ve iletişim kurmak için kurtar kullanıyorum. Sana da tavsiye ederim.');
  }

  void sendFeedback() async {
    DateTime now = DateTime.now();
    String email = "khrmnvolkan@gmail.com",
        subject = "Hata Raporu ",
        body = "Şöyle bir hata aldım; %0D%0A &#8203;",
        nowString = now.day.toString() +
            "/" +
            now.month.toString() +
            "/" +
            now.year.toString() +
            " " +
            now.hour.toString() +
            ":" +
            now.minute.toString() +
            ":" +
            now.second.toString(),
        url = "mailto:$email?subject=${subject + nowString}&body=$body";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  void rateApp(BuildContext context) {
    _rateMyApp.init().then((_) {
      _rateMyApp.showStarRateDialog(
        context,
        title: 'Uygulama hakkında ne düşünüyorsun',
        message: 'Lütfen uygulamayı değerlendirin',
        actionsBuilder: (_, stars) {
          return [
            FlatButton(
              child: Text('Tamam'),
              onPressed: () async {
                await _rateMyApp
                    .callEvent(RateMyAppEventType.rateButtonPressed);
                Navigator.pop<RateMyAppDialogButton>(
                    context, RateMyAppDialogButton.rate);
              },
            ),
          ];
        },
        dialogStyle: DialogStyle(
          titleAlign: TextAlign.center,
          messageAlign: TextAlign.center,
          messagePadding: EdgeInsets.only(bottom: 20.0),
        ),
        starRatingOptions: StarRatingOptions(),
        onDismissed: () =>
            _rateMyApp.callEvent(RateMyAppEventType.laterButtonPressed),
      );
    });
  }

  void logOut() {
    box.write('firstOpen', false);
    Get.offAndToNamed(Routes.LOGIN);
  }

  @override
  void onReady() {
    super.onReady();
    print('ready');
  }

  @override
  void onClose() {}
}
