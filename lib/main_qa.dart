import 'package:flutter/material.dart';

import 'app/app.dart';
import 'config/flavour_config.dart';

void main() {
  FlavorConfig(
      flavor: Flavor.QA,
      values: FlavorValues(baseUrl: '', posterUrl: '', bannerUrl: ''));
  WidgetsFlutterBinding.ensureInitialized();
  runApp(App());
}
