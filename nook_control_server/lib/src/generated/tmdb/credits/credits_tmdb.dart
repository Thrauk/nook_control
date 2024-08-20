/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../../protocol.dart' as _i2;
import 'package:serverpod_serialization/serverpod_serialization.dart';

abstract class CreditsTMDB
    implements _i1.SerializableModel, _i1.ProtocolSerialization {
  CreditsTMDB._({
    required this.cast,
    required this.crew,
  });

  factory CreditsTMDB({
    required List<_i2.CastPersonTMDB> cast,
    required List<_i2.CrewPersonTMDB> crew,
  }) = _CreditsTMDBImpl;

  factory CreditsTMDB.fromJson(Map<String, dynamic> jsonSerialization) {
    return CreditsTMDB(
      cast: (jsonSerialization['cast'] as List)
          .map((e) => _i2.CastPersonTMDB.fromJson((e as Map<String, dynamic>)))
          .toList(),
      crew: (jsonSerialization['crew'] as List)
          .map((e) => _i2.CrewPersonTMDB.fromJson((e as Map<String, dynamic>)))
          .toList(),
    );
  }

  List<_i2.CastPersonTMDB> cast;

  List<_i2.CrewPersonTMDB> crew;

  CreditsTMDB copyWith({
    List<_i2.CastPersonTMDB>? cast,
    List<_i2.CrewPersonTMDB>? crew,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      'cast': cast.toJson(valueToJson: (v) => v.toJson()),
      'crew': crew.toJson(valueToJson: (v) => v.toJson()),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      'cast': cast.toJson(valueToJson: (v) => v.toJsonForProtocol()),
      'crew': crew.toJson(valueToJson: (v) => v.toJsonForProtocol()),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _CreditsTMDBImpl extends CreditsTMDB {
  _CreditsTMDBImpl({
    required List<_i2.CastPersonTMDB> cast,
    required List<_i2.CrewPersonTMDB> crew,
  }) : super._(
          cast: cast,
          crew: crew,
        );

  @override
  CreditsTMDB copyWith({
    List<_i2.CastPersonTMDB>? cast,
    List<_i2.CrewPersonTMDB>? crew,
  }) {
    return CreditsTMDB(
      cast: cast ?? this.cast.clone(),
      crew: crew ?? this.crew.clone(),
    );
  }
}
