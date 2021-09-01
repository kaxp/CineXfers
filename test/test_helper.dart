import '../lib/config/flavour_config.dart';
import 'package:flutter/cupertino.dart';

Future<void> sharedInit() async {
  FlavorConfig(
      flavor: Flavor.DEVELOPMENT,
      values: FlavorValues(
          baseUrl: "http://api.themoviedb.org/3/search/movie",
          posterUrl: 'https://image.tmdb.org/t/p/w185',
          bannerUrl: 'https://image.tmdb.org/t/p/w500'));

  WidgetsFlutterBinding.ensureInitialized();
}
