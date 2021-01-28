import 'package:get/get.dart';

import 'package:kurtar_client/bindings/earth_quake_risk_binding.dart';
import 'package:kurtar_client/bindings/beacon_binding.dart';
import 'package:kurtar_client/bindings/earth_quake_binding.dart';
import 'package:kurtar_client/bindings/earth_quakes_binding.dart';
import 'package:kurtar_client/bindings/flood_binding.dart';
import 'package:kurtar_client/bindings/home_binding.dart';
import 'package:kurtar_client/bindings/intro_binding.dart';
import 'package:kurtar_client/bindings/register_binding.dart';
import 'package:kurtar_client/bindings/snowslide_binding.dart';
import 'package:kurtar_client/bindings/terror_binding.dart';
import 'package:kurtar_client/bindings/tsunami_binding.dart';
import 'package:kurtar_client/bindings/wildfire_binding.dart';
import 'package:kurtar_client/views/beacon_view.dart';
import 'package:kurtar_client/views/earth_quake_risk_view.dart';
import 'package:kurtar_client/views/earth_quake_view.dart';
import 'package:kurtar_client/views/earth_quakes_view.dart';
import 'package:kurtar_client/views/flood_view.dart';
import 'package:kurtar_client/views/home_view.dart';
import 'package:kurtar_client/views/intro_view.dart';
import 'package:kurtar_client/views/login_form_view.dart';
import 'package:kurtar_client/views/register_views/register_citizen_view.dart';
import 'package:kurtar_client/views/register_views/register_saver_view.dart';
import 'package:kurtar_client/views/register_views/register_view.dart';
import 'package:kurtar_client/views/snowslide_view.dart';
import 'package:kurtar_client/views/terror_view.dart';
import 'package:kurtar_client/views/tsunami_view.dart';
import 'package:kurtar_client/views/wildfire_view.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.EARTH_QUAKE_RISK;

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
    GetPage(
      name: Routes.EARTH_QUAKES,
      page: () => EarthQuakesView(),
      binding: EarthQuakesBinding(),
    ),
    GetPage(
      name: Routes.EARTH_QUAKE,
      page: () => EarthQuakeView(),
      binding: EarthQuakeBinding(),
    ),
    GetPage(
      name: Routes.FLOOD,
      page: () => FloodView(),
      binding: FloodBinding(),
    ),
    GetPage(
      name: Routes.WILDFIRE,
      page: () => WildfireView(),
      binding: WildfireBinding(),
    ),
    GetPage(
      name: Routes.SNOWSLIDE,
      page: () => SnowslideView(),
      binding: SnowslideBinding(),
    ),
    GetPage(
      name: Routes.TSUNAMI,
      page: () => TsunamiView(),
      binding: TsunamiBinding(),
    ),
    GetPage(
      name: Routes.TERROR,
      page: () => TerrorView(),
      binding: TerrorBinding(),
    ),
    GetPage(
      name: Routes.EARTH_QUAKE_RISK,
      page: () => EarthQuakeRiskView(),
      binding: EarthQuakeRiskBinding(),
    ),
  ];
}
