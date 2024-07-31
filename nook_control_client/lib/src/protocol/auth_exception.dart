/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'protocol.dart' as _i2;

abstract class AuthException
    implements _i1.SerializableException, _i1.SerializableModel {
  AuthException._({
    required this.message,
    required this.errorType,
  });

  factory AuthException({
    required String message,
    required _i2.UserError errorType,
  }) = _AuthExceptionImpl;

  factory AuthException.fromJson(Map<String, dynamic> jsonSerialization) {
    return AuthException(
      message: jsonSerialization['message'] as String,
      errorType:
          _i2.UserError.fromJson((jsonSerialization['errorType'] as int)),
    );
  }

  String message;

  _i2.UserError errorType;

  AuthException copyWith({
    String? message,
    _i2.UserError? errorType,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      'message': message,
      'errorType': errorType.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _AuthExceptionImpl extends AuthException {
  _AuthExceptionImpl({
    required String message,
    required _i2.UserError errorType,
  }) : super._(
          message: message,
          errorType: errorType,
        );

  @override
  AuthException copyWith({
    String? message,
    _i2.UserError? errorType,
  }) {
    return AuthException(
      message: message ?? this.message,
      errorType: errorType ?? this.errorType,
    );
  }
}
