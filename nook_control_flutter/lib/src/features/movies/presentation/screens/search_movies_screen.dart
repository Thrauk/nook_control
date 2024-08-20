import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:nook_control_flutter/src/core/utils/route_query_parameters.dart';
import 'package:nook_control_flutter/src/features/movies/presentation/widgets/search_movies_layout.dart';

class SearchMoviesScreen extends StatelessWidget {
  const SearchMoviesScreen({
    super.key,
    this.queryParameters = const <String, dynamic>{},
  });

  static const String route = '/movies';
  static const String fullPath = '/movies';

  final Map<String, dynamic> queryParameters;

  static String buildFullPath([Map<String, dynamic> queryParameters = const <String, dynamic>{}]) {
    final String queryString = RouteQueryParameters.toQueryString(queryParameters);
    return queryString.isNotEmpty ? '$fullPath?$queryString' : fullPath;
  }

  static void push(
    BuildContext context, {
    Map<String, dynamic> queryParameters = const <String, dynamic>{},
    Object? extra,
  }) {
    context.push(
      buildFullPath(queryParameters),
      extra: extra,
    );
  }

  static void go(
    BuildContext context, {
    Map<String, dynamic> queryParameters = const <String, dynamic>{},
    Object? extra,
  }) {
    context.go(
      buildFullPath(queryParameters),
      extra: extra,
    );
  }

  static Widget builder(BuildContext context, GoRouterState state) {
    final queryParameters = Map<String, dynamic>.from(state.uri.queryParameters);
    return SearchMoviesScreen(
      queryParameters: queryParameters,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SearchMoviesLayout(
          queryParameters: queryParameters,
        ),
      ),
    );
  }
}
