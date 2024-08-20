/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class SearchQuerySingleTMDB implements _i1.SerializableModel {
  SearchQuerySingleTMDB._({
    required this.query,
    this.includeAdult,
    required this.page,
    this.year,
  });

  factory SearchQuerySingleTMDB({
    required String query,
    bool? includeAdult,
    required int page,
    int? year,
  }) = _SearchQuerySingleTMDBImpl;

  factory SearchQuerySingleTMDB.fromJson(
      Map<String, dynamic> jsonSerialization) {
    return SearchQuerySingleTMDB(
      query: jsonSerialization['query'] as String,
      includeAdult: jsonSerialization['includeAdult'] as bool?,
      page: jsonSerialization['page'] as int,
      year: jsonSerialization['year'] as int?,
    );
  }

  String query;

  bool? includeAdult;

  int page;

  int? year;

  SearchQuerySingleTMDB copyWith({
    String? query,
    bool? includeAdult,
    int? page,
    int? year,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      'query': query,
      if (includeAdult != null) 'includeAdult': includeAdult,
      'page': page,
      if (year != null) 'year': year,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _SearchQuerySingleTMDBImpl extends SearchQuerySingleTMDB {
  _SearchQuerySingleTMDBImpl({
    required String query,
    bool? includeAdult,
    required int page,
    int? year,
  }) : super._(
          query: query,
          includeAdult: includeAdult,
          page: page,
          year: year,
        );

  @override
  SearchQuerySingleTMDB copyWith({
    String? query,
    Object? includeAdult = _Undefined,
    int? page,
    Object? year = _Undefined,
  }) {
    return SearchQuerySingleTMDB(
      query: query ?? this.query,
      includeAdult: includeAdult is bool? ? includeAdult : this.includeAdult,
      page: page ?? this.page,
      year: year is int? ? year : this.year,
    );
  }
}
