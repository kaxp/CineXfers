import 'package:get/get.dart';

import '../../generated/l10n.dart';
import '../../models/movies.dart';
import '../../screens/home/home_controller.dart';
import '../../utils/functions.dart';

class DetailController extends GetxController {
  // final homeController = Get.find<HomeController>();
  // final int tappedMovieIndex = Get.arguments;
  // final Result movieData = homeController.movieResult![tappedMovieIndex];
  // these 3 lines are combined into the below single line
  final Result movieData =
      Get.find<HomeController>().movieResult![Get.arguments];

  int childListIndex = -1;
  int parentListIndex =
      -1; /* parentList = [2D, 3D, etc.] and childList = list of times for earch parentListItem*/

  void updateTimeSelectionCellIndex(int childCellIndex, int parentCellIndex) {
    if (childListIndex == childCellIndex &&
        parentListIndex == parentCellIndex) {
      //Deselection on same cell tap
      childListIndex = -1;
      parentListIndex = -1;
    } else {
      childListIndex = childCellIndex;
      parentListIndex = parentCellIndex;
    }

    update();
  }

  void showSnackbar() {
    Functions.showCineSnackBar(
        title: S.current.functionality, message: S.current.comingSoon);
  }
}
