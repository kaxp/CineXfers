import 'package:flutter/material.dart';

import 'app/app.dart';
import 'config/flavour_config.dart';

void main() {
  FlavorConfig(
      flavor: Flavor.PRODUCTION,
      values: FlavorValues(baseUrl: '', posterUrl: ''));

  runApp(App());
}
