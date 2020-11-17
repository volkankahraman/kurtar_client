import 'package:get/get.dart';
import 'package:kurtar_client/bindings/home_binding.dart';
import 'package:kurtar_client/views/home_view.dart';
import 'package:kurtar_client/views/login_form_view.dart';
part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.LOGIN;

  static final routes = [
    GetPage(
      name: Routes.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
      title: 'Kurtar',
    ),
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginFormView(),
      // binding: HomeBinding(),
    ),
  ];
}
