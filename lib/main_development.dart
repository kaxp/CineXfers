import 'package:flutter/material.dart';

import 'app/app.dart';
import 'config/flavour_config.dart';

void main() {
  FlavorConfig(
      flavor: Flavor.DEVELOPMENT,
      values: FlavorValues(
          baseUrl:
              "http://api.themoviedb.org/3/search/movie?api_key=6753d9119b9627493ae129f3c3c99151&query=superman&page=1",
          posterUrl: 'https://image.tmdb.org/t/p/w92'));

  runApp(App());
}
