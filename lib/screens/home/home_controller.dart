import 'package:cine_xfers/models/movies.dart';
import 'package:cine_xfers/network/api/movies_api.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  late List<Movies> movieList = [];

  MoviesApi _postApi = MoviesApi.instance;

  @override
  void onInit() {
    getMovies();
    super.onInit();
  }

  Future<Movies> getMovies() async {
    try {
      Movies res = await _postApi.getMovies();
      movieList.add(res);
      return res;
    } catch (e) {
      print(e.toString());
      throw e;
    } finally {
      refresh();
    }
  }
}
