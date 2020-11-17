import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:kurtar_client/routes/app_pages.dart';
import 'package:sweetalert/sweetalert.dart';

class HttpController extends GetxController {
  static const baseUrl = 'https://kurtar-server.herokuapp.com';

  login(context, {username: String, password: String}) {
    http.post('$baseUrl/authentication', body: {
      'strategy': 'local',
      'email': username,
      'password': password
    }).then((response) {
      Map<String, dynamic> resJson = jsonDecode(response.body);

      print(response.body);
      if (resJson["user"] != null) {
        Get.offAndToNamed(Routes.HOME);

        // SweetAlert.show(
        //   context,
        //   title: "Giriş Başarılı",
        //   style: SweetAlertStyle.success,
        //   onPress: (_) {
        //     // Get.offAndToNamed(Routes.HOME);
        //     return _;
        //   },
        // );
      } else {
        SweetAlert.show(context,
            title: "Giriş Başarısız", style: SweetAlertStyle.error);
      }
    }).catchError((err) {
      print(err);
      SweetAlert.show(context, title: "Hata", style: SweetAlertStyle.error);
    });
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }
}
