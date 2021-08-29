enum Flavor { DEVELOPMENT, PRODUCTION, QA }

class FlavorValues {
  FlavorValues({required this.baseUrl, required this.posterUrl});

  final String baseUrl;
  final String posterUrl;
  //Add other flavor specific values, e.g database name

}

class FlavorConfig {
  final Flavor flavor;
  final FlavorValues values;

  static FlavorConfig? _instance;

  factory FlavorConfig({required Flavor flavor, required FlavorValues values}) {
    _instance ??= FlavorConfig?._internal(flavor, values);
    return _instance!;
  }

  FlavorConfig._internal(this.flavor, this.values);

  static FlavorConfig get instance {
    return _instance!;
  }

  static String baseUrl() => _instance!.values.baseUrl;

  static String posterUrl() => _instance!.values.posterUrl;

  static bool isProduction() => _instance!.flavor == Flavor.PRODUCTION;

  static bool isDevelopment() => _instance!.flavor == Flavor.DEVELOPMENT;

  static bool isQA() => _instance!.flavor == Flavor.QA;
}
