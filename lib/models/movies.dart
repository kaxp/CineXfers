import 'dart:convert';
import 'package:equatable/equatable.dart';

import '../network/constants/endpoints.dart';

class Movies extends Equatable {
  Movies({
    this.page,
    this.results,
    this.totalPages,
    this.totalResults,
  });

  final int? page;
  final List<Result>? results;
  final int? totalPages;
  final int? totalResults;

  factory Movies.fromRawJson(String str) => Movies.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Movies.fromJson(Map<String, dynamic> json) => Movies(
        page: json["page"],
        results:
            List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
        totalPages: json["total_pages"] ?? 0,
        totalResults: json["total_results"] ?? 0,
      );

  Map<String, dynamic> toJson() => {
        "page": page,
        "results": List<Result>.from(results!.map((x) => x.toJson())),
        "total_pages": totalPages,
        "total_results": totalResults,
      };

  @override
  List<Object?> get props => [
        page,
        totalPages,
        totalResults,
        results,
      ];
}

class Result extends Equatable {
  Result(
      {this.adult,
      this.backdropPath,
      this.genreIds,
      this.id,
      this.originalLanguage,
      this.originalTitle,
      this.overview,
      this.popularity,
      this.posterPath,
      this.bannerPath,
      this.releaseDate,
      this.title,
      this.video,
      this.voteAverage,
      this.voteCount,
      this.experienceList,
      this.showTimings,
      this.genre,
      this.duration});

  final bool? adult;
  final String? backdropPath;
  final List<int>? genreIds;
  final int? id;
  final String? originalLanguage;
  final String? originalTitle;
  final String? overview;
  final double? popularity;
  final String? posterPath;
  final String? bannerPath;
  final String? releaseDate;
  final String? title;
  final bool? video;
  final double? voteAverage;
  final int? voteCount;
  final List<String>? experienceList;
  final List<ShowTimings>? showTimings;
  final String? genre;
  final String? duration;

  factory Result.fromRawJson(String str) => Result.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Result.fromJson(Map<String, dynamic> json) {
    return Result(
      adult: json["adult"],
      backdropPath:
          json["backdrop_path"] == null ? null : json["backdrop_path"],
      genreIds: List<int>.from(json["genre_ids"].map((x) => x)),
      id: json["id"],
      originalLanguage: json["original_language"],
      originalTitle: json["original_title"],
      overview: json["overview"],
      popularity: json["popularity"].toDouble(),
      posterPath: json["poster_path"] == null
          ? null
          : '${Endpoints.posterUrl}${json["poster_path"]}',
      bannerPath: json["poster_path"] == null
          ? null
          : '${Endpoints.bannerurl}${json["poster_path"]}',
      releaseDate: json["release_date"],
      title: json["title"],
      video: json["video"],
      voteAverage: json["vote_average"].toDouble(),
      voteCount: json["vote_count"],
      /*This is dummy experience list */
      experienceList: ["2D", "Imax3D", "3D", "Imax2D"],
      /*This is dummy showTiming list */
      showTimings: [
        ShowTimings("2D", ["8:45", "9:45", "10:45"]),
        ShowTimings("3D",
            ["7:45", "8:45", "9:45", "10:45", "7:45", "8:45", "9:45", "10:45"]),
        ShowTimings("Imax3D", ["7:45", "8:45"])
      ],
      genre: 'Action/Adventure',
      /* This is dummy genre */
      duration: '2h 3min', /* This is dummy duration */
    );
  }

  Map<String, dynamic> toJson() => {
        "adult": adult,
        "backdrop_path": backdropPath == null ? null : backdropPath,
        "genre_ids": List<dynamic>.from(genreIds!.map((x) => x)),
        "id": id,
        "original_language": originalLanguage,
        "original_title": originalTitle,
        "overview": overview,
        "popularity": popularity,
        "poster_path": posterPath == null ? null : posterPath,
        "bannerPath": posterPath == null ? null : posterPath,
        "release_date": releaseDate,
        "title": title,
        "video": video,
        "vote_average": voteAverage,
        "vote_count": voteCount,
      };

  @override
  List<Object?> get props => [
        title,
        video,
        adult,
        id,
        voteCount,
        voteAverage,
        originalLanguage,
        overview,
        originalTitle,
        posterPath,
        bannerPath,
        experienceList,
        genre,
        duration
      ];
}

class ShowTimings extends Equatable {
  final String? experience;
  final List<String>? times;

  ShowTimings(this.experience, this.times);
  @override
  List<Object?> get props => [experience, times];
}
