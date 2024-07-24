/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class AuthResponse implements _i1.SerializableModel {
  AuthResponse._({
    required this.success,
    this.token,
  });

  factory AuthResponse({
    required bool success,
    String? token,
  }) = _AuthResponseImpl;

  factory AuthResponse.fromJson(Map<String, dynamic> jsonSerialization) {
    return AuthResponse(
      success: jsonSerialization['success'] as bool,
      token: jsonSerialization['token'] as String?,
    );
  }

  bool success;

  String? token;

  AuthResponse copyWith({
    bool? success,
    String? token,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      'success': success,
      if (token != null) 'token': token,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _AuthResponseImpl extends AuthResponse {
  _AuthResponseImpl({
    required bool success,
    String? token,
  }) : super._(
          success: success,
          token: token,
        );

  @override
  AuthResponse copyWith({
    bool? success,
    Object? token = _Undefined,
  }) {
    return AuthResponse(
      success: success ?? this.success,
      token: token is String? ? token : this.token,
    );
  }
}
