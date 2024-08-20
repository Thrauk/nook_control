/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class CrewPersonTMDB
    implements _i1.SerializableModel, _i1.ProtocolSerialization {
  CrewPersonTMDB._({
    required this.adult,
    required this.gender,
    required this.id,
    required this.name,
    this.profile_path,
    required this.job,
  });

  factory CrewPersonTMDB({
    required bool adult,
    required int gender,
    required int id,
    required String name,
    String? profile_path,
    required String job,
  }) = _CrewPersonTMDBImpl;

  factory CrewPersonTMDB.fromJson(Map<String, dynamic> jsonSerialization) {
    return CrewPersonTMDB(
      adult: jsonSerialization['adult'] as bool,
      gender: jsonSerialization['gender'] as int,
      id: jsonSerialization['id'] as int,
      name: jsonSerialization['name'] as String,
      profile_path: jsonSerialization['profile_path'] as String?,
      job: jsonSerialization['job'] as String,
    );
  }

  bool adult;

  int gender;

  int id;

  String name;

  String? profile_path;

  String job;

  CrewPersonTMDB copyWith({
    bool? adult,
    int? gender,
    int? id,
    String? name,
    String? profile_path,
    String? job,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      'adult': adult,
      'gender': gender,
      'id': id,
      'name': name,
      if (profile_path != null) 'profile_path': profile_path,
      'job': job,
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
      'job': job,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CrewPersonTMDBImpl extends CrewPersonTMDB {
  _CrewPersonTMDBImpl({
    required bool adult,
    required int gender,
    required int id,
    required String name,
    String? profile_path,
    required String job,
  }) : super._(
          adult: adult,
          gender: gender,
          id: id,
          name: name,
          profile_path: profile_path,
          job: job,
        );

  @override
  CrewPersonTMDB copyWith({
    bool? adult,
    int? gender,
    int? id,
    String? name,
    Object? profile_path = _Undefined,
    String? job,
  }) {
    return CrewPersonTMDB(
      adult: adult ?? this.adult,
      gender: gender ?? this.gender,
      id: id ?? this.id,
      name: name ?? this.name,
      profile_path: profile_path is String? ? profile_path : this.profile_path,
      job: job ?? this.job,
    );
  }
}
