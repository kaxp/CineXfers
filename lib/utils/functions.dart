import 'package:get/get.dart';

abstract class Functions {
  static void showCineSnackBar({String? title, String? message}) {
    Get.snackbar(title.toString(), message.toString(),
        snackPosition: SnackPosition.BOTTOM);
  }

  static double getGridAspectRatio(double devicePixelRatio) {
    if (devicePixelRatio == 2.0) {
      return 0.51;
    } else if (devicePixelRatio == 2.625) {
      return 0.52;
    } else if (devicePixelRatio == 3.0) {
      return 0.50;
    } else if (devicePixelRatio == 3.5) {
      return 0.52;
    } else {
      return 0.52;
    }
  }
}
