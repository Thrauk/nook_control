/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../../../protocol.dart' as _i2;

abstract class MovieDetailsTMDB
    implements _i1.SerializableModel, _i1.ProtocolSerialization {
  MovieDetailsTMDB._({
    this.adult,
    this.backdrop_path,
    required this.id,
    this.imdb_id,
    this.original_language,
    required this.original_title,
    required this.overview,
    required this.popularity,
    this.poster_path,
    required this.release_date,
    required this.title,
    required this.vote_average,
    required this.vote_count,
    required this.credits,
    required this.external_ids,
  });

  factory MovieDetailsTMDB({
    bool? adult,
    String? backdrop_path,
    required int id,
    String? imdb_id,
    String? original_language,
    required String original_title,
    required String overview,
    required double popularity,
    String? poster_path,
    required String release_date,
    required String title,
    required double vote_average,
    required int vote_count,
    required _i2.CreditsTMDB credits,
    required _i2.ExternalIds external_ids,
  }) = _MovieDetailsTMDBImpl;

  factory MovieDetailsTMDB.fromJson(Map<String, dynamic> jsonSerialization) {
    return MovieDetailsTMDB(
      adult: jsonSerialization['adult'] as bool?,
      backdrop_path: jsonSerialization['backdrop_path'] as String?,
      id: jsonSerialization['id'] as int,
      imdb_id: jsonSerialization['imdb_id'] as String?,
      original_language: jsonSerialization['original_language'] as String?,
      original_title: jsonSerialization['original_title'] as String,
      overview: jsonSerialization['overview'] as String,
      popularity: (jsonSerialization['popularity'] as num).toDouble(),
      poster_path: jsonSerialization['poster_path'] as String?,
      release_date: jsonSerialization['release_date'] as String,
      title: jsonSerialization['title'] as String,
      vote_average: (jsonSerialization['vote_average'] as num).toDouble(),
      vote_count: jsonSerialization['vote_count'] as int,
      credits: _i2.CreditsTMDB.fromJson(
          (jsonSerialization['credits'] as Map<String, dynamic>)),
      external_ids: _i2.ExternalIds.fromJson(
          (jsonSerialization['external_ids'] as Map<String, dynamic>)),
    );
  }

  bool? adult;

  String? backdrop_path;

  int id;

  String? imdb_id;

  String? original_language;

  String original_title;

  String overview;

  double popularity;

  String? poster_path;

  String release_date;

  String title;

  double vote_average;

  int vote_count;

  _i2.CreditsTMDB credits;

  _i2.ExternalIds external_ids;

  MovieDetailsTMDB copyWith({
    bool? adult,
    String? backdrop_path,
    int? id,
    String? imdb_id,
    String? original_language,
    String? original_title,
    String? overview,
    double? popularity,
    String? poster_path,
    String? release_date,
    String? title,
    double? vote_average,
    int? vote_count,
    _i2.CreditsTMDB? credits,
    _i2.ExternalIds? external_ids,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (adult != null) 'adult': adult,
      if (backdrop_path != null) 'backdrop_path': backdrop_path,
      'id': id,
      if (imdb_id != null) 'imdb_id': imdb_id,
      if (original_language != null) 'original_language': original_language,
      'original_title': original_title,
      'overview': overview,
      'popularity': popularity,
      if (poster_path != null) 'poster_path': poster_path,
      'release_date': release_date,
      'title': title,
      'vote_average': vote_average,
      'vote_count': vote_count,
      'credits': credits.toJson(),
      'external_ids': external_ids.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (adult != null) 'adult': adult,
      if (backdrop_path != null) 'backdrop_path': backdrop_path,
      'id': id,
      if (imdb_id != null) 'imdb_id': imdb_id,
      if (original_language != null) 'original_language': original_language,
      'original_title': original_title,
      'overview': overview,
      'popularity': popularity,
      if (poster_path != null) 'poster_path': poster_path,
      'release_date': release_date,
      'title': title,
      'vote_average': vote_average,
      'vote_count': vote_count,
      'credits': credits.toJsonForProtocol(),
      'external_ids': external_ids.toJsonForProtocol(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _MovieDetailsTMDBImpl extends MovieDetailsTMDB {
  _MovieDetailsTMDBImpl({
    bool? adult,
    String? backdrop_path,
    required int id,
    String? imdb_id,
    String? original_language,
    required String original_title,
    required String overview,
    required double popularity,
    String? poster_path,
    required String release_date,
    required String title,
    required double vote_average,
    required int vote_count,
    required _i2.CreditsTMDB credits,
    required _i2.ExternalIds external_ids,
  }) : super._(
          adult: adult,
          backdrop_path: backdrop_path,
          id: id,
          imdb_id: imdb_id,
          original_language: original_language,
          original_title: original_title,
          overview: overview,
          popularity: popularity,
          poster_path: poster_path,
          release_date: release_date,
          title: title,
          vote_average: vote_average,
          vote_count: vote_count,
          credits: credits,
          external_ids: external_ids,
        );

  @override
  MovieDetailsTMDB copyWith({
    Object? adult = _Undefined,
    Object? backdrop_path = _Undefined,
    int? id,
    Object? imdb_id = _Undefined,
    Object? original_language = _Undefined,
    String? original_title,
    String? overview,
    double? popularity,
    Object? poster_path = _Undefined,
    String? release_date,
    String? title,
    double? vote_average,
    int? vote_count,
    _i2.CreditsTMDB? credits,
    _i2.ExternalIds? external_ids,
  }) {
    return MovieDetailsTMDB(
      adult: adult is bool? ? adult : this.adult,
      backdrop_path:
          backdrop_path is String? ? backdrop_path : this.backdrop_path,
      id: id ?? this.id,
      imdb_id: imdb_id is String? ? imdb_id : this.imdb_id,
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
      credits: credits ?? this.credits.copyWith(),
      external_ids: external_ids ?? this.external_ids.copyWith(),
    );
  }
}
