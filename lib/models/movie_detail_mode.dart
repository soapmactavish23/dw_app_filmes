// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:app_filmes/models/cast_model.dart';
import 'package:app_filmes/models/genres_model.dart';

class MovieDetailMode {
  final String title;
  final double starts;
  final List<GenresModel> genres;
  final List<String> urlImages;
  final DateTime releaseDate;
  final String overview;
  final List<String> productionCompanies;
  final String originalLanguage;
  final List<CastModel> cast;
  MovieDetailMode({
    required this.title,
    required this.starts,
    required this.genres,
    required this.urlImages,
    required this.releaseDate,
    required this.overview,
    required this.productionCompanies,
    required this.originalLanguage,
    required this.cast,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'starts': starts,
      'genres': genres.map((x) => x.toMap()).toList(),
      'urlImages': urlImages,
      'releaseDate': releaseDate.millisecondsSinceEpoch,
      'overview': overview,
      'productionCompanies': productionCompanies,
      'originalLanguage': originalLanguage,
      'cast': cast.map((x) => x.toMap()).toList(),
    };
  }

  factory MovieDetailMode.fromMap(Map<String, dynamic> map) {
    var urlImagesPosters = map['images']['posters'];
    var urlImages = urlImagesPosters
            ?.map<String>(
              (i) => 'https://image.tmdb.org/t/p/w500${i['file_path']}',
            )
            .toList() ??
        [];

    return MovieDetailMode(
      title: map['title'] as String,
      starts: map['vote_count'] as double,
      urlImages: urlImages,
      genres: List<GenresModel>.from(
        (map['genres'] as List<int>).map<GenresModel>(
          (x) => GenresModel.fromMap(x as Map<String, dynamic>),
        ),
      ),
      releaseDate: DateTime.parse(map['releaseDate']),
      overview: map['overview'] as String,
      productionCompanies:
          List<String>.from((map['productionCompanies'] as List<String>)),
      originalLanguage: map['originalLanguage'] as String,
      cast: List<CastModel>.from(
        (map['cast'] as List<int>).map<CastModel>(
          (x) => CastModel.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory MovieDetailMode.fromJson(String source) =>
      MovieDetailMode.fromMap(json.decode(source) as Map<String, dynamic>);
}
