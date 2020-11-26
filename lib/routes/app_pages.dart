import 'package:kurtar_client/views/beacon_view.dart';
import 'package:kurtar_client/bindings/beacon_binding.dart';
import 'package:kurtar_client/views/intro_view.dart';
import 'package:kurtar_client/bindings/intro_binding.dart';
import 'package:kurtar_client/views/register_views/register_citizen_view.dart';
import 'package:kurtar_client/views/register_views/register_saver_view.dart';
import 'package:kurtar_client/views/register_views/register_view.dart';
import 'package:kurtar_client/bindings/register_binding.dart';
import 'package:get/get.dart';
import 'package:kurtar_client/bindings/home_binding.dart';
import 'package:kurtar_client/views/home_view.dart';
import 'package:kurtar_client/views/login_form_view.dart';
part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.HOME;

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
    GetPage(
      name: Routes.REGISTER,
      page: () => RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: Routes.REGISTERCITIZEN,
      page: () => RegisterCitizenView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: Routes.REGISTERSAVER,
      page: () => RegisterSaverView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: Routes.INTRO,
      page: () => IntroView(),
      binding: IntroBinding(),
    ),
    GetPage(
      name: Routes.BEACON,
      page: () => BeaconView(),
      binding: BeaconBinding(),
    ),
  ];
}
