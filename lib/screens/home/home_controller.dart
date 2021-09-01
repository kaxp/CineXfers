import 'package:get/get.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../../generated/l10n.dart';
import '../../models/movies.dart';
import '../../network/api/movies_api.dart';
import '../../routes/routes.dart';
import '../../utils/functions.dart';

class HomeController extends GetxController {
  List<Result>? movieResult = [];
  MoviesApi _postApi = MoviesApi.instance;
  bool isLoading = true;
  bool isFirstTime = true;
  static const _pageSize = 20;
  final PagingController<int, Result> pagingController =
      PagingController(firstPageKey: 0);

  @override
  void onInit() {
    super.onInit();
    if (isFirstTime) {
      _fetchMovies(1);
    }
    pagingController.addPageRequestListener((pageKey) {
      _fetchMovies(pageKey);
    });
  }

  Future<void> _fetchMovies(int pageKey) async {
    try {
      isLoading = true;
      var res = await _postApi.getMovies(pageKey, _pageSize, 'superman');
      movieResult!.addAll((res.results)!.toList());
      final isLastPage = res.results!.length < _pageSize;
      if (isLastPage) {
        pagingController.appendLastPage(res.results!.toList());
      } else {
        final nextPageKey = pageKey + 1;
        pagingController.appendPage(res.results!.toList(), nextPageKey);
      }
    } catch (error) {
      pagingController.error = error;
    } finally {
      isFirstTime = false;
      isLoading = false;
      refresh();
    }
  }

  void navigateToDetailPage(int index) {
    Get.toNamed(Routes.detail, arguments: index);
  }

  void showSnackbar() {
    Functions.showCineSnackBar(
        title: S.current.functionality, message: S.current.comingSoon);
  }
}
