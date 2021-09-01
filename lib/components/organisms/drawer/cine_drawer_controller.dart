import 'package:get/get.dart';

import '../../../generated/l10n.dart';
import '../../../utils/functions.dart';

class CineDrawerController extends GetxController {
  final List<String>? drawerList = [
    S.current.home,
    S.current.movies,
    S.current.cinemas,
    S.current.profile,
    S.current.tickets,
    S.current.favorites,
    S.current.login,
  ];

  void tabItemNavigation(
    int drawerIndex,
  ) {
    switch (drawerList![drawerIndex]) {
      case "Home":
        Get.back();
        break;
      case "Cinemas":
        Functions.showCineSnackBar(
            title: S.current.functionality, message: S.current.comingSoon);
        break;
      case "Profile":
        Functions.showCineSnackBar(
            title: S.current.functionality, message: S.current.comingSoon);
        break;

      case "Movies":
        Functions.showCineSnackBar(
            title: S.current.functionality, message: S.current.comingSoon);
        break;
      case "Tickets":
        Functions.showCineSnackBar(
            title: S.current.functionality, message: S.current.comingSoon);
        break;

      case "Favorites":
        Functions.showCineSnackBar(
            title: S.current.functionality, message: S.current.comingSoon);
        break;

      case "Login":
        Functions.showCineSnackBar(
            title: S.current.functionality, message: S.current.comingSoon);
        break;

      default:
        Get.back();
        break;
    }
  }
}
