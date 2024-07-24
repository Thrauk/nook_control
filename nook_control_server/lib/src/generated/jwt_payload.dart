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

abstract class JwtPayload
    implements _i1.SerializableModel, _i1.ProtocolSerialization {
  JwtPayload._({
    required this.scopes,
    required this.username,
    required this.expirationTimestamp,
    required this.id,
  });

  factory JwtPayload({
    required List<String> scopes,
    required String username,
    required int expirationTimestamp,
    required int id,
  }) = _JwtPayloadImpl;

  factory JwtPayload.fromJson(Map<String, dynamic> jsonSerialization) {
    return JwtPayload(
      scopes: (jsonSerialization['scopes'] as List)
          .map((e) => e as String)
          .toList(),
      username: jsonSerialization['username'] as String,
      expirationTimestamp: jsonSerialization['expirationTimestamp'] as int,
      id: jsonSerialization['id'] as int,
    );
  }

  List<String> scopes;

  String username;

  int expirationTimestamp;

  int id;

  JwtPayload copyWith({
    List<String>? scopes,
    String? username,
    int? expirationTimestamp,
    int? id,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      'scopes': scopes.toJson(),
      'username': username,
      'expirationTimestamp': expirationTimestamp,
      'id': id,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      'scopes': scopes.toJson(),
      'username': username,
      'expirationTimestamp': expirationTimestamp,
      'id': id,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _JwtPayloadImpl extends JwtPayload {
  _JwtPayloadImpl({
    required List<String> scopes,
    required String username,
    required int expirationTimestamp,
    required int id,
  }) : super._(
          scopes: scopes,
          username: username,
          expirationTimestamp: expirationTimestamp,
          id: id,
        );

  @override
  JwtPayload copyWith({
    List<String>? scopes,
    String? username,
    int? expirationTimestamp,
    int? id,
  }) {
    return JwtPayload(
      scopes: scopes ?? this.scopes.clone(),
      username: username ?? this.username,
      expirationTimestamp: expirationTimestamp ?? this.expirationTimestamp,
      id: id ?? this.id,
    );
  }
}
