import 'package:cine_xfers/models/movies.dart';
import 'package:cine_xfers/network/constants/endpoints.dart';

import '../dio_client.dart';

class MoviesApi {
  MoviesApi._internal();
  static final MoviesApi _instance = MoviesApi._internal();
  static MoviesApi get instance => _instance;

  DioClient _networkClient = DioClient.instance;

  /// Returns list of post in response
  Future<Movies> getMovies() async {
    try {
      final res = await _networkClient.get(Endpoints.getPosts);
      return Movies.fromJson(res);
    } catch (e) {
      throw e;
    }
  }
}
