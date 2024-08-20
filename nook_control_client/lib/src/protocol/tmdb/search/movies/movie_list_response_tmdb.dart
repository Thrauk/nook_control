/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import '../../../protocol.dart' as _i2;

abstract class MovieListResponseTMDB implements _i1.SerializableModel {
  MovieListResponseTMDB._({
    required this.page,
    required this.results,
    required this.total_pages,
    required this.total_results,
  });

  factory MovieListResponseTMDB({
    required int page,
    required List<_i2.MovieListItemTMDB> results,
    required int total_pages,
    required int total_results,
  }) = _MovieListResponseTMDBImpl;

  factory MovieListResponseTMDB.fromJson(
      Map<String, dynamic> jsonSerialization) {
    return MovieListResponseTMDB(
      page: jsonSerialization['page'] as int,
      results: (jsonSerialization['results'] as List)
          .map((e) =>
              _i2.MovieListItemTMDB.fromJson((e as Map<String, dynamic>)))
          .toList(),
      total_pages: jsonSerialization['total_pages'] as int,
      total_results: jsonSerialization['total_results'] as int,
    );
  }

  int page;

  List<_i2.MovieListItemTMDB> results;

  int total_pages;

  int total_results;

  MovieListResponseTMDB copyWith({
    int? page,
    List<_i2.MovieListItemTMDB>? results,
    int? total_pages,
    int? total_results,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      'page': page,
      'results': results.toJson(valueToJson: (v) => v.toJson()),
      'total_pages': total_pages,
      'total_results': total_results,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _MovieListResponseTMDBImpl extends MovieListResponseTMDB {
  _MovieListResponseTMDBImpl({
    required int page,
    required List<_i2.MovieListItemTMDB> results,
    required int total_pages,
    required int total_results,
  }) : super._(
          page: page,
          results: results,
          total_pages: total_pages,
          total_results: total_results,
        );

  @override
  MovieListResponseTMDB copyWith({
    int? page,
    List<_i2.MovieListItemTMDB>? results,
    int? total_pages,
    int? total_results,
  }) {
    return MovieListResponseTMDB(
      page: page ?? this.page,
      results: results ?? this.results.clone(),
      total_pages: total_pages ?? this.total_pages,
      total_results: total_results ?? this.total_results,
    );
  }
}
