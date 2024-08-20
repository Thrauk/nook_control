/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class ExternalIds
    implements _i1.SerializableModel, _i1.ProtocolSerialization {
  ExternalIds._({required this.imdb_id});

  factory ExternalIds({required String imdb_id}) = _ExternalIdsImpl;

  factory ExternalIds.fromJson(Map<String, dynamic> jsonSerialization) {
    return ExternalIds(imdb_id: jsonSerialization['imdb_id'] as String);
  }

  String imdb_id;

  ExternalIds copyWith({String? imdb_id});
  @override
  Map<String, dynamic> toJson() {
    return {'imdb_id': imdb_id};
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {'imdb_id': imdb_id};
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _ExternalIdsImpl extends ExternalIds {
  _ExternalIdsImpl({required String imdb_id}) : super._(imdb_id: imdb_id);

  @override
  ExternalIds copyWith({String? imdb_id}) {
    return ExternalIds(imdb_id: imdb_id ?? this.imdb_id);
  }
}
