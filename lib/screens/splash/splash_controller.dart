import 'package:get/get.dart';

import '../../generated/l10n.dart';
import '../../routes/routes.dart';

class SplashController extends GetxController {
  static bool? isUserAuthenticated = true;
  final String? appTitle = S.current.cineXfers;

  @override
  void onInit() {
    isUserAuthenticated! ? navigateToHomePage() : navigateToAuthPage();
    super.onInit();
  }

  void navigateToHomePage() {
    Future.delayed(Duration(seconds: 5), () async {
      Get.offNamed(Routes.home);
    });
  }

  void navigateToAuthPage() {}
}
