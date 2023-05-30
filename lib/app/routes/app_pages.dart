import 'package:get/get.dart';

import '../modules/about_us/bindings/about_us_binding.dart';
import '../modules/about_us/views/about_us_view.dart';
import '../modules/alat/bindings/alat_binding.dart';
import '../modules/alat/views/alat_view.dart';
import '../modules/detail_gerakan/bindings/detail_gerakan_binding.dart';
import '../modules/detail_gerakan/views/detail_gerakan_view.dart';
import '../modules/favourite/bindings/favourite_binding.dart';
import '../modules/favourite/views/favourite_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/introduction/bindings/introduction_binding.dart';
import '../modules/introduction/views/introduction_view.dart';
import '../modules/pengantar/bindings/pengantar_binding.dart';
import '../modules/pengantar/views/pengantar_view.dart';
import '../modules/welcome/bindings/welcome_binding.dart';
import '../modules/welcome/views/welcome_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  // ignore: constant_identifier_names
  static const INITIAL = Routes.WELCOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.WELCOME,
      page: () => const WelcomeView(),
      binding: WelcomeBinding(),
    ),
    GetPage(
      name: _Paths.INTRODUCTION,
      page: () => const IntroductionView(),
      binding: IntroductionBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_GERAKAN,
      page: () => const DetailGerakanView(),
      binding: DetailGerakanBinding(),
    ),
    GetPage(
      name: _Paths.ABOUT_US,
      page: () => const AboutUsView(),
      binding: AboutUsBinding(),
    ),
    GetPage(
      name: _Paths.FAVOURITE,
      page: () =>  FavouriteView(),
      binding: FavouriteBinding(),
    ),
    GetPage(
      name: _Paths.PENGANTAR,
      page: () => const PengantarView(),
      binding: PengantarBinding(),
    ),
    GetPage(
      name: _Paths.ALAT,
      page: () => const AlatView(),
      binding: AlatBinding(),
    ),
  ];
}
