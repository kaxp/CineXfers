# cine_xfers
This application is developed on Flutter 2.2.3 in the Stable channel.
Migrated to Flutter 3.0, tested on Flutter v3.16.3 in Stable channel.

## Objective
1. Fetch a list of movies from this URL
http://api.themoviedb.org/3/search/movie?api_key=6753d9119b9627493ae129f3c3c99151&query=superman&page=1
 
2. Poster (size: w92, w185,w500)
http://image.tmdb.org/t/p/w92/2DtPSyODKWXluIRV7PVru0SSzja.jpg
 
3. Display result in ListView or GridView. The list would have the following rows Movie Image, Movie Name, Release date, Full description/Overview
 
4. Tapping on the cell should display the detail screen.
 
5. Pagination: when the user reaches the bottom of the list, it should load the second page if available.


## Project Architecture
- Android Flavors (development, production and qa)
- State-management- [Get](https://pub.dev/packages/get)
- Design pattern - [Atomic design pattern](https://atomicdesign.bradfrost.com/chapter-2/#:~:text=Atomic%20design%20is%20atoms%2C%20molecules,parts%20at%20the%20same%20time.)
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

## Videe
![Alt Text](https://github.com/kaxp/CineXfers/blob/7bc096dcde960ef63dd9e9bd4155a60ebc17e69e/screenshots/android.gif)


