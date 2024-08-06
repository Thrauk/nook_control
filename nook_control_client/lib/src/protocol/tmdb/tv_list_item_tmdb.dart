/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class TVListItemTMDB implements _i1.SerializableModel {
  TVListItemTMDB._({
    required this.adult,
    this.backdrop_path,
    required this.genre_ids,
    required this.id,
    required this.origin_country,
    this.original_language,
    required this.original_name,
    required this.overview,
    required this.popularity,
    this.poster_path,
    required this.first_air_date,
    required this.name,
    required this.vote_average,
    required this.vote_count,
  });

  factory TVListItemTMDB({
    required bool adult,
    String? backdrop_path,
    required List<int> genre_ids,
    required int id,
    required List<String> origin_country,
    String? original_language,
    required String original_name,
    required String overview,
    required double popularity,
    String? poster_path,
    required String first_air_date,
    required String name,
    required double vote_average,
    required int vote_count,
  }) = _TVListItemTMDBImpl;

  factory TVListItemTMDB.fromJson(Map<String, dynamic> jsonSerialization) {
    return TVListItemTMDB(
      adult: jsonSerialization['adult'] as bool,
      backdrop_path: jsonSerialization['backdrop_path'] as String?,
      genre_ids: (jsonSerialization['genre_ids'] as List)
          .map((e) => e as int)
          .toList(),
      id: jsonSerialization['id'] as int,
      origin_country: (jsonSerialization['origin_country'] as List)
          .map((e) => e as String)
          .toList(),
      original_language: jsonSerialization['original_language'] as String?,
      original_name: jsonSerialization['original_name'] as String,
      overview: jsonSerialization['overview'] as String,
      popularity: (jsonSerialization['popularity'] as num).toDouble(),
      poster_path: jsonSerialization['poster_path'] as String?,
      first_air_date: jsonSerialization['first_air_date'] as String,
      name: jsonSerialization['name'] as String,
      vote_average: (jsonSerialization['vote_average'] as num).toDouble(),
      vote_count: jsonSerialization['vote_count'] as int,
    );
  }

  bool adult;

  String? backdrop_path;

  List<int> genre_ids;

  int id;

  List<String> origin_country;

  String? original_language;

  String original_name;

  String overview;

  double popularity;

  String? poster_path;

  String first_air_date;

  String name;

  double vote_average;

  int vote_count;

  TVListItemTMDB copyWith({
    bool? adult,
    String? backdrop_path,
    List<int>? genre_ids,
    int? id,
    List<String>? origin_country,
    String? original_language,
    String? original_name,
    String? overview,
    double? popularity,
    String? poster_path,
    String? first_air_date,
    String? name,
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
      'origin_country': origin_country.toJson(),
      if (original_language != null) 'original_language': original_language,
      'original_name': original_name,
      'overview': overview,
      'popularity': popularity,
      if (poster_path != null) 'poster_path': poster_path,
      'first_air_date': first_air_date,
      'name': name,
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

class _TVListItemTMDBImpl extends TVListItemTMDB {
  _TVListItemTMDBImpl({
    required bool adult,
    String? backdrop_path,
    required List<int> genre_ids,
    required int id,
    required List<String> origin_country,
    String? original_language,
    required String original_name,
    required String overview,
    required double popularity,
    String? poster_path,
    required String first_air_date,
    required String name,
    required double vote_average,
    required int vote_count,
  }) : super._(
          adult: adult,
          backdrop_path: backdrop_path,
          genre_ids: genre_ids,
          id: id,
          origin_country: origin_country,
          original_language: original_language,
          original_name: original_name,
          overview: overview,
          popularity: popularity,
          poster_path: poster_path,
          first_air_date: first_air_date,
          name: name,
          vote_average: vote_average,
          vote_count: vote_count,
        );

  @override
  TVListItemTMDB copyWith({
    bool? adult,
    Object? backdrop_path = _Undefined,
    List<int>? genre_ids,
    int? id,
    List<String>? origin_country,
    Object? original_language = _Undefined,
    String? original_name,
    String? overview,
    double? popularity,
    Object? poster_path = _Undefined,
    String? first_air_date,
    String? name,
    double? vote_average,
    int? vote_count,
  }) {
    return TVListItemTMDB(
      adult: adult ?? this.adult,
      backdrop_path:
          backdrop_path is String? ? backdrop_path : this.backdrop_path,
      genre_ids: genre_ids ?? this.genre_ids.clone(),
      id: id ?? this.id,
      origin_country: origin_country ?? this.origin_country.clone(),
      original_language: original_language is String?
          ? original_language
          : this.original_language,
      original_name: original_name ?? this.original_name,
      overview: overview ?? this.overview,
      popularity: popularity ?? this.popularity,
      poster_path: poster_path is String? ? poster_path : this.poster_path,
      first_air_date: first_air_date ?? this.first_air_date,
      name: name ?? this.name,
      vote_average: vote_average ?? this.vote_average,
      vote_count: vote_count ?? this.vote_count,
    );
  }
}
