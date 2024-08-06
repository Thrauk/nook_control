/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

library protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod/serverpod.dart' as _i1;
import 'package:serverpod/protocol.dart' as _i2;
import 'package:serverpod_auth_server/serverpod_auth_server.dart' as _i3;
import 'auth_exception.dart' as _i4;
import 'auth_response.dart' as _i5;
import 'company.dart' as _i6;
import 'example.dart' as _i7;
import 'jwt_payload.dart' as _i8;
import 'tmdb/search_tv_show_query.dart' as _i9;
import 'tmdb/tv_list_item_tmdb.dart' as _i10;
import 'tmdb/tv_list_response_tmdb.dart' as _i11;
import 'user.dart' as _i12;
import 'user_error.dart' as _i13;
import 'protocol.dart' as _i14;
export 'auth_exception.dart';
export 'auth_response.dart';
export 'company.dart';
export 'example.dart';
export 'jwt_payload.dart';
export 'tmdb/search_tv_show_query.dart';
export 'tmdb/tv_list_item_tmdb.dart';
export 'tmdb/tv_list_response_tmdb.dart';
export 'user.dart';
export 'user_error.dart';

class Protocol extends _i1.SerializationManagerServer {
  Protocol._();

  factory Protocol() => _instance;

  static final Protocol _instance = Protocol._();

  static final List<_i2.TableDefinition> targetTableDefinitions = [
    ..._i3.Protocol.targetTableDefinitions,
    ..._i2.Protocol.targetTableDefinitions,
  ];

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (t == _i4.AuthException) {
      return _i4.AuthException.fromJson(data) as T;
    }
    if (t == _i5.AuthResponse) {
      return _i5.AuthResponse.fromJson(data) as T;
    }
    if (t == _i6.Company) {
      return _i6.Company.fromJson(data) as T;
    }
    if (t == _i7.Example) {
      return _i7.Example.fromJson(data) as T;
    }
    if (t == _i8.JwtPayload) {
      return _i8.JwtPayload.fromJson(data) as T;
    }
    if (t == _i9.SearchTvShowQuery) {
      return _i9.SearchTvShowQuery.fromJson(data) as T;
    }
    if (t == _i10.TVListItemTMDB) {
      return _i10.TVListItemTMDB.fromJson(data) as T;
    }
    if (t == _i11.TVListResponseTMDB) {
      return _i11.TVListResponseTMDB.fromJson(data) as T;
    }
    if (t == _i12.User) {
      return _i12.User.fromJson(data) as T;
    }
    if (t == _i13.UserError) {
      return _i13.UserError.fromJson(data) as T;
    }
    if (t == _i1.getType<_i4.AuthException?>()) {
      return (data != null ? _i4.AuthException.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i5.AuthResponse?>()) {
      return (data != null ? _i5.AuthResponse.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i6.Company?>()) {
      return (data != null ? _i6.Company.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i7.Example?>()) {
      return (data != null ? _i7.Example.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i8.JwtPayload?>()) {
      return (data != null ? _i8.JwtPayload.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i9.SearchTvShowQuery?>()) {
      return (data != null ? _i9.SearchTvShowQuery.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i10.TVListItemTMDB?>()) {
      return (data != null ? _i10.TVListItemTMDB.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i11.TVListResponseTMDB?>()) {
      return (data != null ? _i11.TVListResponseTMDB.fromJson(data) : null)
          as T;
    }
    if (t == _i1.getType<_i12.User?>()) {
      return (data != null ? _i12.User.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i13.UserError?>()) {
      return (data != null ? _i13.UserError.fromJson(data) : null) as T;
    }
    if (t == List<String>) {
      return (data as List).map((e) => deserialize<String>(e)).toList()
          as dynamic;
    }
    if (t == List<int>) {
      return (data as List).map((e) => deserialize<int>(e)).toList() as dynamic;
    }
    if (t == List<_i14.TVListItemTMDB>) {
      return (data as List)
          .map((e) => deserialize<_i14.TVListItemTMDB>(e))
          .toList() as dynamic;
    }
    try {
      return _i3.Protocol().deserialize<T>(data, t);
    } on _i1.DeserializationTypeNotFoundException catch (_) {}
    try {
      return _i2.Protocol().deserialize<T>(data, t);
    } on _i1.DeserializationTypeNotFoundException catch (_) {}
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object data) {
    String? className;
    className = _i3.Protocol().getClassNameForObject(data);
    if (className != null) {
      return 'serverpod_auth.$className';
    }
    if (data is _i4.AuthException) {
      return 'AuthException';
    }
    if (data is _i5.AuthResponse) {
      return 'AuthResponse';
    }
    if (data is _i6.Company) {
      return 'Company';
    }
    if (data is _i7.Example) {
      return 'Example';
    }
    if (data is _i8.JwtPayload) {
      return 'JwtPayload';
    }
    if (data is _i9.SearchTvShowQuery) {
      return 'SearchTvShowQuery';
    }
    if (data is _i10.TVListItemTMDB) {
      return 'TVListItemTMDB';
    }
    if (data is _i11.TVListResponseTMDB) {
      return 'TVListResponseTMDB';
    }
    if (data is _i12.User) {
      return 'User';
    }
    if (data is _i13.UserError) {
      return 'UserError';
    }
    return super.getClassNameForObject(data);
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'].startsWith('serverpod_auth.')) {
      data['className'] = data['className'].substring(15);
      return _i3.Protocol().deserializeByClassName(data);
    }
    if (data['className'] == 'AuthException') {
      return deserialize<_i4.AuthException>(data['data']);
    }
    if (data['className'] == 'AuthResponse') {
      return deserialize<_i5.AuthResponse>(data['data']);
    }
    if (data['className'] == 'Company') {
      return deserialize<_i6.Company>(data['data']);
    }
    if (data['className'] == 'Example') {
      return deserialize<_i7.Example>(data['data']);
    }
    if (data['className'] == 'JwtPayload') {
      return deserialize<_i8.JwtPayload>(data['data']);
    }
    if (data['className'] == 'SearchTvShowQuery') {
      return deserialize<_i9.SearchTvShowQuery>(data['data']);
    }
    if (data['className'] == 'TVListItemTMDB') {
      return deserialize<_i10.TVListItemTMDB>(data['data']);
    }
    if (data['className'] == 'TVListResponseTMDB') {
      return deserialize<_i11.TVListResponseTMDB>(data['data']);
    }
    if (data['className'] == 'User') {
      return deserialize<_i12.User>(data['data']);
    }
    if (data['className'] == 'UserError') {
      return deserialize<_i13.UserError>(data['data']);
    }
    return super.deserializeByClassName(data);
  }

  @override
  _i1.Table? getTableForType(Type t) {
    {
      var table = _i3.Protocol().getTableForType(t);
      if (table != null) {
        return table;
      }
    }
    {
      var table = _i2.Protocol().getTableForType(t);
      if (table != null) {
        return table;
      }
    }
    return null;
  }

  @override
  List<_i2.TableDefinition> getTargetTableDefinitions() =>
      targetTableDefinitions;

  @override
  String getModuleName() => 'nook_control';
}
