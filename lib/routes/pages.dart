import 'package:get/get_navigation/src/routes/get_route.dart';

import 'routes.dart';
import '../screens/detail/detail_binding.dart';
import '../screens/detail/detail_page.dart';
import '../screens/home/home_binding.dart';
import '../screens/home/home_page.dart';
import '../screens/splash/splash_page.dart';
import '../screens/splash/splash_binding.dart';

abstract class Pages {
  static var pages = [
    GetPage(
        name: Routes.splash,
        page: () => SplashPage(),
        binding: SplashBinding()),
    GetPage(name: Routes.home, page: () => HomePage(), binding: HomeBinding()),
    GetPage(
        name: Routes.detail,
        page: () => DetailPage(),
        binding: DetailBinding()),
  ];
}
