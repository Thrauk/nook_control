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
import 'package:serverpod_serialization/serverpod_serialization.dart';

abstract class TVListResponseTMDB
    implements _i1.SerializableModel, _i1.ProtocolSerialization {
  TVListResponseTMDB._({
    required this.page,
    required this.results,
    required this.total_pages,
    required this.total_results,
  });

  factory TVListResponseTMDB({
    required int page,
    required List<_i2.TVListItemTMDB> results,
    required int total_pages,
    required int total_results,
  }) = _TVListResponseTMDBImpl;

  factory TVListResponseTMDB.fromJson(Map<String, dynamic> jsonSerialization) {
    return TVListResponseTMDB(
      page: jsonSerialization['page'] as int,
      results: (jsonSerialization['results'] as List)
          .map((e) => _i2.TVListItemTMDB.fromJson((e as Map<String, dynamic>)))
          .toList(),
      total_pages: jsonSerialization['total_pages'] as int,
      total_results: jsonSerialization['total_results'] as int,
    );
  }

  int page;

  List<_i2.TVListItemTMDB> results;

  int total_pages;

  int total_results;

  TVListResponseTMDB copyWith({
    int? page,
    List<_i2.TVListItemTMDB>? results,
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
  Map<String, dynamic> toJsonForProtocol() {
    return {
      'page': page,
      'results': results.toJson(valueToJson: (v) => v.toJsonForProtocol()),
      'total_pages': total_pages,
      'total_results': total_results,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _TVListResponseTMDBImpl extends TVListResponseTMDB {
  _TVListResponseTMDBImpl({
    required int page,
    required List<_i2.TVListItemTMDB> results,
    required int total_pages,
    required int total_results,
  }) : super._(
          page: page,
          results: results,
          total_pages: total_pages,
          total_results: total_results,
        );

  @override
  TVListResponseTMDB copyWith({
    int? page,
    List<_i2.TVListItemTMDB>? results,
    int? total_pages,
    int? total_results,
  }) {
    return TVListResponseTMDB(
      page: page ?? this.page,
      results: results ?? this.results.clone(),
      total_pages: total_pages ?? this.total_pages,
      total_results: total_results ?? this.total_results,
    );
  }
}
