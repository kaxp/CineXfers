import 'package:flutter/material.dart';

import 'app/app.dart';
import 'config/flavour_config.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  FlavorConfig(
      flavor: Flavor.DEVELOPMENT,
      values: FlavorValues(
          baseUrl: "http://api.themoviedb.org/3/search/movie",
          posterUrl: 'https://image.tmdb.org/t/p/w185',
          bannerUrl: 'https://image.tmdb.org/t/p/w500'));

  runApp(App());
}
