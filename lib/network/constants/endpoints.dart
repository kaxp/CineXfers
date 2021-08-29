import 'package:cine_xfers/config/flavour_config.dart';

class Endpoints {
  Endpoints._();

  // base url
  static String baseUrl = FlavorConfig.baseUrl();

  // poster url
  static String posterUrl = FlavorConfig.posterUrl();

  // receiveTimeout
  static const int receiveTimeout = 15000;

  // connectTimeout
  static const int connectionTimeout = 30000;

  // getMovies endpoints
  static String getPosts = baseUrl;
}
