/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class User
    implements _i1.SerializableModel, _i1.ProtocolSerialization {
  User._({
    required this.username,
    required this.password,
    this.id,
  });

  factory User({
    required String username,
    required String password,
    int? id,
  }) = _UserImpl;

  factory User.fromJson(Map<String, dynamic> jsonSerialization) {
    return User(
      username: jsonSerialization['username'] as String,
      password: jsonSerialization['password'] as String,
      id: jsonSerialization['id'] as int?,
    );
  }

  String username;

  String password;

  int? id;

  User copyWith({
    String? username,
    String? password,
    int? id,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      'username': username,
      'password': password,
      if (id != null) 'id': id,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      'username': username,
      'password': password,
      if (id != null) 'id': id,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _UserImpl extends User {
  _UserImpl({
    required String username,
    required String password,
    int? id,
  }) : super._(
          username: username,
          password: password,
          id: id,
        );

  @override
  User copyWith({
    String? username,
    String? password,
    Object? id = _Undefined,
  }) {
    return User(
      username: username ?? this.username,
      password: password ?? this.password,
      id: id is int? ? id : this.id,
    );
  }
}
