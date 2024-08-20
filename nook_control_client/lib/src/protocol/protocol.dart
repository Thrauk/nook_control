/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

library protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'auth_exception.dart' as _i2;
import 'auth_response.dart' as _i3;
import 'company.dart' as _i4;
import 'example.dart' as _i5;
import 'jwt_payload.dart' as _i6;
import 'tmdb/credits/cast_person_tmdb.dart' as _i7;
import 'tmdb/credits/credits_tmdb.dart' as _i8;
import 'tmdb/credits/crew_person_tmbd.dart' as _i9;
import 'tmdb/external/external_ids.dart' as _i10;
import 'tmdb/search/movies/movie_details_tmdb.dart' as _i11;
import 'tmdb/search/movies/movie_list_item_tmdb.dart' as _i12;
import 'tmdb/search/movies/movie_list_response_tmdb.dart' as _i13;
import 'tmdb/search/search_query_single_tmdb.dart' as _i14;
import 'tmdb/search/tv/tv_list_item_tmdb.dart' as _i15;
import 'tmdb/search/tv/tv_list_response_tmdb.dart' as _i16;
import 'user.dart' as _i17;
import 'user_error.dart' as _i18;
import 'protocol.dart' as _i19;
import 'package:serverpod_auth_client/serverpod_auth_client.dart' as _i20;
export 'auth_exception.dart';
export 'auth_response.dart';
export 'company.dart';
export 'example.dart';
export 'jwt_payload.dart';
export 'tmdb/credits/cast_person_tmdb.dart';
export 'tmdb/credits/credits_tmdb.dart';
export 'tmdb/credits/crew_person_tmbd.dart';
export 'tmdb/external/external_ids.dart';
export 'tmdb/search/movies/movie_details_tmdb.dart';
export 'tmdb/search/movies/movie_list_item_tmdb.dart';
export 'tmdb/search/movies/movie_list_response_tmdb.dart';
export 'tmdb/search/search_query_single_tmdb.dart';
export 'tmdb/search/tv/tv_list_item_tmdb.dart';
export 'tmdb/search/tv/tv_list_response_tmdb.dart';
export 'user.dart';
export 'user_error.dart';
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
    if (t == _i2.AuthException) {
      return _i2.AuthException.fromJson(data) as T;
    }
    if (t == _i3.AuthResponse) {
      return _i3.AuthResponse.fromJson(data) as T;
    }
    if (t == _i4.Company) {
      return _i4.Company.fromJson(data) as T;
    }
    if (t == _i5.Example) {
      return _i5.Example.fromJson(data) as T;
    }
    if (t == _i6.JwtPayload) {
      return _i6.JwtPayload.fromJson(data) as T;
    }
    if (t == _i7.CastPersonTMDB) {
      return _i7.CastPersonTMDB.fromJson(data) as T;
    }
    if (t == _i8.CreditsTMDB) {
      return _i8.CreditsTMDB.fromJson(data) as T;
    }
    if (t == _i9.CrewPersonTMDB) {
      return _i9.CrewPersonTMDB.fromJson(data) as T;
    }
    if (t == _i10.ExternalIds) {
      return _i10.ExternalIds.fromJson(data) as T;
    }
    if (t == _i11.MovieDetailsTMDB) {
      return _i11.MovieDetailsTMDB.fromJson(data) as T;
    }
    if (t == _i12.MovieListItemTMDB) {
      return _i12.MovieListItemTMDB.fromJson(data) as T;
    }
    if (t == _i13.MovieListResponseTMDB) {
      return _i13.MovieListResponseTMDB.fromJson(data) as T;
    }
    if (t == _i14.SearchQuerySingleTMDB) {
      return _i14.SearchQuerySingleTMDB.fromJson(data) as T;
    }
    if (t == _i15.TVListItemTMDB) {
      return _i15.TVListItemTMDB.fromJson(data) as T;
    }
    if (t == _i16.TVListResponseTMDB) {
      return _i16.TVListResponseTMDB.fromJson(data) as T;
    }
    if (t == _i17.User) {
      return _i17.User.fromJson(data) as T;
    }
    if (t == _i18.UserError) {
      return _i18.UserError.fromJson(data) as T;
    }
    if (t == _i1.getType<_i2.AuthException?>()) {
      return (data != null ? _i2.AuthException.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i3.AuthResponse?>()) {
      return (data != null ? _i3.AuthResponse.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i4.Company?>()) {
      return (data != null ? _i4.Company.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i5.Example?>()) {
      return (data != null ? _i5.Example.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i6.JwtPayload?>()) {
      return (data != null ? _i6.JwtPayload.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i7.CastPersonTMDB?>()) {
      return (data != null ? _i7.CastPersonTMDB.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i8.CreditsTMDB?>()) {
      return (data != null ? _i8.CreditsTMDB.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i9.CrewPersonTMDB?>()) {
      return (data != null ? _i9.CrewPersonTMDB.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i10.ExternalIds?>()) {
      return (data != null ? _i10.ExternalIds.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i11.MovieDetailsTMDB?>()) {
      return (data != null ? _i11.MovieDetailsTMDB.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i12.MovieListItemTMDB?>()) {
      return (data != null ? _i12.MovieListItemTMDB.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i13.MovieListResponseTMDB?>()) {
      return (data != null ? _i13.MovieListResponseTMDB.fromJson(data) : null)
          as T;
    }
    if (t == _i1.getType<_i14.SearchQuerySingleTMDB?>()) {
      return (data != null ? _i14.SearchQuerySingleTMDB.fromJson(data) : null)
          as T;
    }
    if (t == _i1.getType<_i15.TVListItemTMDB?>()) {
      return (data != null ? _i15.TVListItemTMDB.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i16.TVListResponseTMDB?>()) {
      return (data != null ? _i16.TVListResponseTMDB.fromJson(data) : null)
          as T;
    }
    if (t == _i1.getType<_i17.User?>()) {
      return (data != null ? _i17.User.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i18.UserError?>()) {
      return (data != null ? _i18.UserError.fromJson(data) : null) as T;
    }
    if (t == List<String>) {
      return (data as List).map((e) => deserialize<String>(e)).toList()
          as dynamic;
    }
    if (t == List<_i19.CastPersonTMDB>) {
      return (data as List)
          .map((e) => deserialize<_i19.CastPersonTMDB>(e))
          .toList() as dynamic;
    }
    if (t == List<_i19.CrewPersonTMDB>) {
      return (data as List)
          .map((e) => deserialize<_i19.CrewPersonTMDB>(e))
          .toList() as dynamic;
    }
    if (t == List<int>) {
      return (data as List).map((e) => deserialize<int>(e)).toList() as dynamic;
    }
    if (t == List<_i19.MovieListItemTMDB>) {
      return (data as List)
          .map((e) => deserialize<_i19.MovieListItemTMDB>(e))
          .toList() as dynamic;
    }
    if (t == List<_i19.TVListItemTMDB>) {
      return (data as List)
          .map((e) => deserialize<_i19.TVListItemTMDB>(e))
          .toList() as dynamic;
    }
    try {
      return _i20.Protocol().deserialize<T>(data, t);
    } on _i1.DeserializationTypeNotFoundException catch (_) {}
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object data) {
    String? className;
    className = _i20.Protocol().getClassNameForObject(data);
    if (className != null) {
      return 'serverpod_auth.$className';
    }
    if (data is _i2.AuthException) {
      return 'AuthException';
    }
    if (data is _i3.AuthResponse) {
      return 'AuthResponse';
    }
    if (data is _i4.Company) {
      return 'Company';
    }
    if (data is _i5.Example) {
      return 'Example';
    }
    if (data is _i6.JwtPayload) {
      return 'JwtPayload';
    }
    if (data is _i7.CastPersonTMDB) {
      return 'CastPersonTMDB';
    }
    if (data is _i8.CreditsTMDB) {
      return 'CreditsTMDB';
    }
    if (data is _i9.CrewPersonTMDB) {
      return 'CrewPersonTMDB';
    }
    if (data is _i10.ExternalIds) {
      return 'ExternalIds';
    }
    if (data is _i11.MovieDetailsTMDB) {
      return 'MovieDetailsTMDB';
    }
    if (data is _i12.MovieListItemTMDB) {
      return 'MovieListItemTMDB';
    }
    if (data is _i13.MovieListResponseTMDB) {
      return 'MovieListResponseTMDB';
    }
    if (data is _i14.SearchQuerySingleTMDB) {
      return 'SearchQuerySingleTMDB';
    }
    if (data is _i15.TVListItemTMDB) {
      return 'TVListItemTMDB';
    }
    if (data is _i16.TVListResponseTMDB) {
      return 'TVListResponseTMDB';
    }
    if (data is _i17.User) {
      return 'User';
    }
    if (data is _i18.UserError) {
      return 'UserError';
    }
    return super.getClassNameForObject(data);
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'].startsWith('serverpod_auth.')) {
      data['className'] = data['className'].substring(15);
      return _i20.Protocol().deserializeByClassName(data);
    }
    if (data['className'] == 'AuthException') {
      return deserialize<_i2.AuthException>(data['data']);
    }
    if (data['className'] == 'AuthResponse') {
      return deserialize<_i3.AuthResponse>(data['data']);
    }
    if (data['className'] == 'Company') {
      return deserialize<_i4.Company>(data['data']);
    }
    if (data['className'] == 'Example') {
      return deserialize<_i5.Example>(data['data']);
    }
    if (data['className'] == 'JwtPayload') {
      return deserialize<_i6.JwtPayload>(data['data']);
    }
    if (data['className'] == 'CastPersonTMDB') {
      return deserialize<_i7.CastPersonTMDB>(data['data']);
    }
    if (data['className'] == 'CreditsTMDB') {
      return deserialize<_i8.CreditsTMDB>(data['data']);
    }
    if (data['className'] == 'CrewPersonTMDB') {
      return deserialize<_i9.CrewPersonTMDB>(data['data']);
    }
    if (data['className'] == 'ExternalIds') {
      return deserialize<_i10.ExternalIds>(data['data']);
    }
    if (data['className'] == 'MovieDetailsTMDB') {
      return deserialize<_i11.MovieDetailsTMDB>(data['data']);
    }
    if (data['className'] == 'MovieListItemTMDB') {
      return deserialize<_i12.MovieListItemTMDB>(data['data']);
    }
    if (data['className'] == 'MovieListResponseTMDB') {
      return deserialize<_i13.MovieListResponseTMDB>(data['data']);
    }
    if (data['className'] == 'SearchQuerySingleTMDB') {
      return deserialize<_i14.SearchQuerySingleTMDB>(data['data']);
    }
    if (data['className'] == 'TVListItemTMDB') {
      return deserialize<_i15.TVListItemTMDB>(data['data']);
    }
    if (data['className'] == 'TVListResponseTMDB') {
      return deserialize<_i16.TVListResponseTMDB>(data['data']);
    }
    if (data['className'] == 'User') {
      return deserialize<_i17.User>(data['data']);
    }
    if (data['className'] == 'UserError') {
      return deserialize<_i18.UserError>(data['data']);
    }
    return super.deserializeByClassName(data);
  }
}
