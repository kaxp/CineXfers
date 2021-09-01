import '../../config/flavour_config.dart';

class Endpoints {
  Endpoints._();

  // base url
  static String baseUrl = FlavorConfig.baseUrl();

  // api key
  static String apiKey = '6753d9119b9627493ae129f3c3c99151';

  // poster url
  static String posterUrl = FlavorConfig.posterUrl();

  // banner url
  static String bannerurl = FlavorConfig.bannerUrl();

  // receiveTimeout
  static const int receiveTimeout = 15000;

  // connectTimeout
  static const int connectionTimeout = 30000;

  // getMovies endpoints
  static String getPosts = baseUrl;
}
