import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:kurtar_client/models/risk_message.dart';
import 'package:kurtar_client/routes/app_pages.dart';
import 'package:location/location.dart';
import 'package:sweetalert/sweetalert.dart';
import 'package:get_storage/get_storage.dart';

class HttpController extends GetxController {
  static const baseUrl = 'https://kurtar-server.herokuapp.com';
  final box = GetStorage();

  login(context, {username: String, password: String}) {
    http.post('$baseUrl/authentication', body: {
      'strategy': 'local',
      'email': username,
      'password': password
    }).then((response) {
      Map<String, dynamic> resJson = jsonDecode(response.body);

      if (resJson["user"] != null) {
        box.write('firstOpen', true);
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

  register(
    context, {
    email: String,
    username: String,
    fullName: String,
    password: String,
    userType: String,
  }) {
    http.post('$baseUrl/users', body: {
      "email": email,
      "username": username,
      "fullName": fullName,
      "password": password,
      "userType": userType
    }).then((response) {
      Map<String, dynamic> resJson = jsonDecode(response.body);

      // print(response.body);
      if (resJson["email"] != null) {
        // Get.offAndToNamed(Routes.HOME);
        box.write('firstOpen', true);

        SweetAlert.show(
          context,
          title: "Üyelik Başarılı",
          style: SweetAlertStyle.success,
          onPress: (_) {
            Get.offAndToNamed(Routes.HOME);
            return _;
          },
        );
      } else {
        print(resJson["errors"]["fullName"]);
        SweetAlert.show(context,
            title: "Hata ${resJson['message']}", style: SweetAlertStyle.error);
      }
    });
  }

  Future<RiskMessage> getCityRisk(String city) async {
    http.Response res = await http.get("$baseUrl/risk-cities/?city=$city");
    return RiskMessage.fromJson(json.decode(res.body));
  }

  dynamic getLocalPoints(LocationData _locationData) async {
    double lat = _locationData.latitude, long = _locationData.longitude;

    http.Response res =
        await http.get("$baseUrl/closest-point?lat=$lat&long=$long");

    if (res.statusCode == 400)
      throw ('Lütfen konum bilgilerini tam gönderiniz.');

    var decoded = json.decode(res.body);
    return decoded;
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
