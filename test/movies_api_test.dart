import '../lib/models/movies.dart';
import '../lib/network/api/movies_api.dart';
import 'package:flutter_test/flutter_test.dart';

import 'test_helper.dart';

void main() {
  group('Movies API', () {
    setUpAll(() async {
      await sharedInit();
    });

    Movies? _page;
    MoviesApi _postApi = MoviesApi.instance;
    const _pageSize = 20;
    const pageKey = 1;
    int? lastPage;

    test('Retrieve all movies in page 1', () async {
      _page = await _postApi.getMovies(pageKey, _pageSize, 'superman');
      expect(_page, isNotNull);
      expect(_page!.results!.length, greaterThan(0));
      expect(_page!.page, isNotNull);
      expect(_page!.page, equals(pageKey));
      expect(_page!.totalPages, isNotNull);
      expect(_page!.totalResults, isNotNull);
      expect(_page!.results![0].title, isNotNull);
      expect(_page!.results![0].releaseDate, isNotNull);
      expect(_page!.results![0].id, isNotNull);
      lastPage = _page!.totalPages;
    });

    test('Retrieve all movies in page 2', () async {
      _page = await _postApi.getMovies(pageKey + 1, _pageSize, 'superman');
      expect(_page, isNotNull);
      expect(_page!.results!.length, greaterThan(0));
      expect(_page!.page, isNotNull);
      expect(_page!.totalPages, isNotNull);
      expect(_page!.totalResults, isNotNull);
      expect(_page!.results![0].title, isNotNull);
      expect(_page!.results![0].releaseDate, isNotNull);
      expect(_page!.results![0].id, isNotNull);
    });

    test('Retrieve all movies in last page', () async {
      _page = await _postApi.getMovies(lastPage!, _pageSize, 'superman');
      expect(_page, isNotNull);
      expect(_page!.results!.length, greaterThan(0));
      expect(_page!.page, isNotNull);
      expect(_page!.page, equals(lastPage!));
      expect(_page!.page, equals(_page!.totalPages));
      expect(_page!.totalPages, isNotNull);
      expect(_page!.totalResults, isNotNull);
      expect(_page!.results![0].title, isNotNull);
      expect(_page!.results![0].releaseDate, isNotNull);
      expect(_page!.results![0].id, isNotNull);
    });
  });
}
