import '../dio_client.dart';
import '../../models/movies.dart';
import '../../network/constants/endpoints.dart';

class MoviesApi {
  MoviesApi._internal();
  static final MoviesApi _instance = MoviesApi._internal();
  static MoviesApi get instance => _instance;

  DioClient _networkClient = DioClient.instance;

  /// Returns list of post in response
  Future<Movies> getMovies(int pageIndex, int pageSize, String query) async {
    try {
      var queryParam = {
        'api_key': Endpoints.apiKey,
        'query': query,
        'page': pageIndex == 0 ? 1 : pageIndex,
      };
      final res = await _networkClient.get(Endpoints.getPosts,
          queryParameters: queryParam);
      return Movies.fromJson(res);
    } catch (e) {
      throw e;
    }
  }
}
