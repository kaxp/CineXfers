import 'package:cine_xfers/screens/detail/detail_binding.dart';
import 'package:cine_xfers/screens/detail/detail_page.dart';
import 'package:cine_xfers/screens/home/home_binding.dart';
import 'package:cine_xfers/screens/home/home_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import 'routes.dart';

abstract class Pages {
  static var pages = [
    GetPage(name: Routes.home, page: () => HomePage(), binding: HomeBinding()),
    GetPage(
        name: Routes.detail,
        page: () => DetailPage(),
        binding: DetailBinding()),
  ];
}
