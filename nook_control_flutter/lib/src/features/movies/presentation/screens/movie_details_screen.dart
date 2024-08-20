import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:nook_control_flutter/src/core/utils/route_query_parameters.dart';
import 'package:nook_control_flutter/src/features/movies/presentation/widgets/movie_details_layout.dart';
import 'package:nook_control_flutter/src/features/movies/presentation/widgets/search_movies_layout.dart';

class MovieDetailsScreen extends StatelessWidget {
  const MovieDetailsScreen({
    super.key,
    this.queryParameters = const <String, dynamic>{},
  });

  static const String route = 'details';
  static const String fullPath = '/movies/details';

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
    // final movieId = state.pathParameters['id'];
    final queryParameters = Map<String, dynamic>.from(state.uri.queryParameters);
    return MovieDetailsScreen(
      queryParameters: queryParameters,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: MovieDetailsLayout(
          queryParameters: queryParameters,
        ),
      ),
    );
  }
}
