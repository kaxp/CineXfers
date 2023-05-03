# cine_xfers

## Getting Started

This application is developed on Flutter 2.2.3 in Stable channel.
- Tested the application using mac and ubuntu systems.

This application includes
- Android Flavor setup (development, production and qa)
- State-management- [Get](https://pub.dev/packages/get)
- Design pattern - Atomic design pattern
- Architecture pattern - MVVM
- Navigation - [Get](https://pub.dev/packages/get)
- Localization - [intl](https://pub.dev/packages/intl)
- Model classes - [Equatable](https://pub.dev/packages/equatable)
- Common widget showcase - [dashbook](https://pub.dev/packages/dashbook)
- Unit testing - flutter_test
- Http client - [dio](https://pub.dev/packages/dio)

Steps for running the application-
1. Clone the project using `git clone https://github.com/kaxp/CineXfers.git`
2. run   `flutter pub get`
3. For launching the debug app select `cine_xfers-Dev` from _run and debug_ tab in vs code or using cli with commands shown in Step 4
4. For debug build on development run  `flutter run --flavor development -t lib/main_development.dart`
  - Similarly for production and qa run, change the development to _production_ and _qa_ respectively in above command and also change the entry point i.e _main_prodcution.dart_ or _main_qa.dart_. Note: In this app the development environment is only active.

- For running the widget testing run `flutter run  --flavor development -t lib/main_dashbook.dart` command or select `cine_xfers-Dashbook` configuration on _run and debug_ tab in vs code.
- For running the unit test run `flutter test test/movies_api_test.dart` command
- For running with _Release_ build run `flutter run --release --flavor development -t lib/main_development.dart` command. Note release build should be run on physical device.





