/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import 'package:serverpod_serialization/serverpod_serialization.dart';

abstract class MovieListItemTMDB
    implements _i1.SerializableModel, _i1.ProtocolSerialization {
  MovieListItemTMDB._({
    required this.adult,
    this.backdrop_path,
    required this.genre_ids,
    required this.id,
    this.original_language,
    required this.original_title,
    required this.overview,
    required this.popularity,
    this.poster_path,
    required this.release_date,
    required this.title,
    required this.vote_average,
    required this.vote_count,
  });

  factory MovieListItemTMDB({
    required bool adult,
    String? backdrop_path,
    required List<int> genre_ids,
    required int id,
    String? original_language,
    required String original_title,
    required String overview,
    required double popularity,
    String? poster_path,
    required String release_date,
    required String title,
    required double vote_average,
    required int vote_count,
  }) = _MovieListItemTMDBImpl;

  factory MovieListItemTMDB.fromJson(Map<String, dynamic> jsonSerialization) {
    return MovieListItemTMDB(
      adult: jsonSerialization['adult'] as bool,
      backdrop_path: jsonSerialization['backdrop_path'] as String?,
      genre_ids: (jsonSerialization['genre_ids'] as List)
          .map((e) => e as int)
          .toList(),
      id: jsonSerialization['id'] as int,
      original_language: jsonSerialization['original_language'] as String?,
      original_title: jsonSerialization['original_title'] as String,
      overview: jsonSerialization['overview'] as String,
      popularity: (jsonSerialization['popularity'] as num).toDouble(),
      poster_path: jsonSerialization['poster_path'] as String?,
      release_date: jsonSerialization['release_date'] as String,
      title: jsonSerialization['title'] as String,
      vote_average: (jsonSerialization['vote_average'] as num).toDouble(),
      vote_count: jsonSerialization['vote_count'] as int,
    );
  }

  bool adult;

  String? backdrop_path;

  List<int> genre_ids;

  int id;

  String? original_language;

  String original_title;

  String overview;

  double popularity;

  String? poster_path;

  String release_date;

  String title;

  double vote_average;

  int vote_count;

  MovieListItemTMDB copyWith({
    bool? adult,
    String? backdrop_path,
    List<int>? genre_ids,
    int? id,
    String? original_language,
    String? original_title,
    String? overview,
    double? popularity,
    String? poster_path,
    String? release_date,
    String? title,
    double? vote_average,
    int? vote_count,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      'adult': adult,
      if (backdrop_path != null) 'backdrop_path': backdrop_path,
      'genre_ids': genre_ids.toJson(),
      'id': id,
      if (original_language != null) 'original_language': original_language,
      'original_title': original_title,
      'overview': overview,
      'popularity': popularity,
      if (poster_path != null) 'poster_path': poster_path,
      'release_date': release_date,
      'title': title,
      'vote_average': vote_average,
      'vote_count': vote_count,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      'adult': adult,
      if (backdrop_path != null) 'backdrop_path': backdrop_path,
      'genre_ids': genre_ids.toJson(),
      'id': id,
      if (original_language != null) 'original_language': original_language,
      'original_title': original_title,
      'overview': overview,
      'popularity': popularity,
      if (poster_path != null) 'poster_path': poster_path,
      'release_date': release_date,
      'title': title,
      'vote_average': vote_average,
      'vote_count': vote_count,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _MovieListItemTMDBImpl extends MovieListItemTMDB {
  _MovieListItemTMDBImpl({
    required bool adult,
    String? backdrop_path,
    required List<int> genre_ids,
    required int id,
    String? original_language,
    required String original_title,
    required String overview,
    required double popularity,
    String? poster_path,
    required String release_date,
    required String title,
    required double vote_average,
    required int vote_count,
  }) : super._(
          adult: adult,
          backdrop_path: backdrop_path,
          genre_ids: genre_ids,
          id: id,
          original_language: original_language,
          original_title: original_title,
          overview: overview,
          popularity: popularity,
          poster_path: poster_path,
          release_date: release_date,
          title: title,
          vote_average: vote_average,
          vote_count: vote_count,
        );

  @override
  MovieListItemTMDB copyWith({
    bool? adult,
    Object? backdrop_path = _Undefined,
    List<int>? genre_ids,
    int? id,
    Object? original_language = _Undefined,
    String? original_title,
    String? overview,
    double? popularity,
    Object? poster_path = _Undefined,
    String? release_date,
    String? title,
    double? vote_average,
    int? vote_count,
  }) {
    return MovieListItemTMDB(
      adult: adult ?? this.adult,
      backdrop_path:
          backdrop_path is String? ? backdrop_path : this.backdrop_path,
      genre_ids: genre_ids ?? this.genre_ids.clone(),
      id: id ?? this.id,
      original_language: original_language is String?
          ? original_language
          : this.original_language,
      original_title: original_title ?? this.original_title,
      overview: overview ?? this.overview,
      popularity: popularity ?? this.popularity,
      poster_path: poster_path is String? ? poster_path : this.poster_path,
      release_date: release_date ?? this.release_date,
      title: title ?? this.title,
      vote_average: vote_average ?? this.vote_average,
      vote_count: vote_count ?? this.vote_count,
    );
  }
}
