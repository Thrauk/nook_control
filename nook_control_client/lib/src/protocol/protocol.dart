/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

library protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'auth_response.dart' as _i2;
import 'company.dart' as _i3;
import 'example.dart' as _i4;
import 'jwt_payload.dart' as _i5;
import 'user.dart' as _i6;
export 'auth_response.dart';
export 'company.dart';
export 'example.dart';
export 'jwt_payload.dart';
export 'user.dart';
export 'client.dart';

class Protocol extends _i1.SerializationManager {
  Protocol._();

  factory Protocol() => _instance;

  static final Protocol _instance = Protocol._();

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (t == _i2.AuthResponse) {
      return _i2.AuthResponse.fromJson(data) as T;
    }
    if (t == _i3.Company) {
      return _i3.Company.fromJson(data) as T;
    }
    if (t == _i4.Example) {
      return _i4.Example.fromJson(data) as T;
    }
    if (t == _i5.JwtPayload) {
      return _i5.JwtPayload.fromJson(data) as T;
    }
    if (t == _i6.User) {
      return _i6.User.fromJson(data) as T;
    }
    if (t == _i1.getType<_i2.AuthResponse?>()) {
      return (data != null ? _i2.AuthResponse.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i3.Company?>()) {
      return (data != null ? _i3.Company.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i4.Example?>()) {
      return (data != null ? _i4.Example.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i5.JwtPayload?>()) {
      return (data != null ? _i5.JwtPayload.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i6.User?>()) {
      return (data != null ? _i6.User.fromJson(data) : null) as T;
    }
    if (t == List<String>) {
      return (data as List).map((e) => deserialize<String>(e)).toList()
          as dynamic;
    }
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object data) {
    if (data is _i2.AuthResponse) {
      return 'AuthResponse';
    }
    if (data is _i3.Company) {
      return 'Company';
    }
    if (data is _i4.Example) {
      return 'Example';
    }
    if (data is _i5.JwtPayload) {
      return 'JwtPayload';
    }
    if (data is _i6.User) {
      return 'User';
    }
    return super.getClassNameForObject(data);
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'] == 'AuthResponse') {
      return deserialize<_i2.AuthResponse>(data['data']);
    }
    if (data['className'] == 'Company') {
      return deserialize<_i3.Company>(data['data']);
    }
    if (data['className'] == 'Example') {
      return deserialize<_i4.Example>(data['data']);
    }
    if (data['className'] == 'JwtPayload') {
      return deserialize<_i5.JwtPayload>(data['data']);
    }
    if (data['className'] == 'User') {
      return deserialize<_i6.User>(data['data']);
    }
    return super.deserializeByClassName(data);
  }
}
