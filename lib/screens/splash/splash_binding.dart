import 'package:get/get.dart';

import '../../components/organisms/drawer/cine_drawer_controller.dart';
import '../../screens/splash/splash_controller.dart';

class SplashBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashController>(() => SplashController());
    Get.lazyPut<CineDrawerController>(() => CineDrawerController());
  }
}
