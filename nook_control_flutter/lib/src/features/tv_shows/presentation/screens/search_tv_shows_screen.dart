import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nook_control_flutter/src/features/authentication/presentation/widgets/login_form.dart';
import 'package:nook_control_flutter/src/features/authentication/presentation/widgets/main_menu_widget.dart';
import 'package:nook_control_flutter/src/features/tv_shows/presentation/widgets/search_tv_shows_widget.dart';

class SearchTvShowsSceen extends StatelessWidget {
  const SearchTvShowsSceen({super.key});

  static const String route = '/shows';
  static const String fullPath = '/shows';

  static String buildFullPath() {
    return fullPath;
  }

  static void push(
    BuildContext context, {
    Object? extra,
  }) {
    context.push(buildFullPath(), extra: extra);
  }

  static void go(
    BuildContext context, {
    Object? extra,
  }) {
    context.go(buildFullPath(), extra: extra);
  }

  static Widget builder(BuildContext context, GoRouterState state) {
    return const SearchTvShowsSceen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: const SearchTvShowsWidget());
  }
}
