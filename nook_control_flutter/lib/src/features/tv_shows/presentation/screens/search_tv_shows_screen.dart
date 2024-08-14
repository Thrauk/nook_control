import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:nook_control_flutter/src/core/styles/colors.dart';
import 'package:nook_control_flutter/src/core/utils/route_query_parameters.dart';
import 'package:nook_control_flutter/src/features/authentication/presentation/widgets/login_form.dart';
import 'package:nook_control_flutter/src/features/authentication/presentation/widgets/main_menu_widget.dart';
import 'package:nook_control_flutter/src/features/tv_shows/presentation/widgets/search_tv_shows_layout.dart';

class SearchTvShowsScreen extends StatelessWidget {
  const SearchTvShowsScreen({
    super.key,
    this.queryParameters = const <String, dynamic>{},
  });

  static const String route = '/shows';
  static const String fullPath = '/shows';

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
    print('Screen query params');
    print(queryParameters);
    return SearchTvShowsScreen(
      queryParameters: queryParameters,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SearchTvShowsLayout(
          queryParameters: queryParameters,
        ),
      ),
    );
  }
}
