/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class CastPersonTMDB
    implements _i1.SerializableModel, _i1.ProtocolSerialization {
  CastPersonTMDB._({
    required this.adult,
    required this.gender,
    required this.id,
    required this.name,
    this.profile_path,
    required this.character,
    required this.order,
  });

  factory CastPersonTMDB({
    required bool adult,
    required int gender,
    required int id,
    required String name,
    String? profile_path,
    required String character,
    required int order,
  }) = _CastPersonTMDBImpl;

  factory CastPersonTMDB.fromJson(Map<String, dynamic> jsonSerialization) {
    return CastPersonTMDB(
      adult: jsonSerialization['adult'] as bool,
      gender: jsonSerialization['gender'] as int,
      id: jsonSerialization['id'] as int,
      name: jsonSerialization['name'] as String,
      profile_path: jsonSerialization['profile_path'] as String?,
      character: jsonSerialization['character'] as String,
      order: jsonSerialization['order'] as int,
    );
  }

  bool adult;

  int gender;

  int id;

  String name;

  String? profile_path;

  String character;

  int order;

  CastPersonTMDB copyWith({
    bool? adult,
    int? gender,
    int? id,
    String? name,
    String? profile_path,
    String? character,
    int? order,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      'adult': adult,
      'gender': gender,
      'id': id,
      'name': name,
      if (profile_path != null) 'profile_path': profile_path,
      'character': character,
      'order': order,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      'adult': adult,
      'gender': gender,
      'id': id,
      'name': name,
      if (profile_path != null) 'profile_path': profile_path,
      'character': character,
      'order': order,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CastPersonTMDBImpl extends CastPersonTMDB {
  _CastPersonTMDBImpl({
    required bool adult,
    required int gender,
    required int id,
    required String name,
    String? profile_path,
    required String character,
    required int order,
  }) : super._(
          adult: adult,
          gender: gender,
          id: id,
          name: name,
          profile_path: profile_path,
          character: character,
          order: order,
        );

  @override
  CastPersonTMDB copyWith({
    bool? adult,
    int? gender,
    int? id,
    String? name,
    Object? profile_path = _Undefined,
    String? character,
    int? order,
  }) {
    return CastPersonTMDB(
      adult: adult ?? this.adult,
      gender: gender ?? this.gender,
      id: id ?? this.id,
      name: name ?? this.name,
      profile_path: profile_path is String? ? profile_path : this.profile_path,
      character: character ?? this.character,
      order: order ?? this.order,
    );
  }
}
