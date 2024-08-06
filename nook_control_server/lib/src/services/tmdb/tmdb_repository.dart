import 'dart:convert';

import 'package:dotenv/dotenv.dart';
import 'package:nook_control_server/src/generated/protocol.dart';
import 'package:http/http.dart' as http;

class TMDBRepository {
  static final TMDBRepository _singleton = TMDBRepository._internal();

  late final DotEnv _env;
  late final String _tmdbToken;
  static const String _authority = 'api.themoviedb.org';
  late final Map<String, String> _headers;

  factory TMDBRepository() {
    return _singleton;
  }

  TMDBRepository._internal() {
    _env = DotEnv(includePlatformEnvironment: true)..load();
    try {
      _tmdbToken = _env['TMDB_API_TOKEN']!;
      _headers = <String, String>{
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        "Authorization": "Bearer $_tmdbToken",
      };
    } catch (e) {
      throw Exception('ENV doesn\'t TMDB token!');
    }
  }

  Future<TVListResponseTMDB> searchTVShows(SearchTvShowQuery tvShowQuery) async {
    const String path = '/3/search/tv';
    Map<String, dynamic> queryParams = {
      'query': tvShowQuery.query,
      'include_adult': tvShowQuery.includeAdult,
      'page': tvShowQuery.page,
      'year': tvShowQuery.year,
    }..removeWhere((key, value) => value == null);
    final queryParamsStr = queryParams.map(
      (key, value) => MapEntry(key, value.toString()),
    );
    final Uri url = Uri.https(
      _authority,
      path,
      queryParamsStr,
    );
    final response = await http.get(url, headers: _headers);
    final responseJson = jsonDecode(response.body);
    return TVListResponseTMDB.fromJson(responseJson);
  }
}
