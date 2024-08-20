import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:nook_control_flutter/main.dart';
import 'package:nook_control_flutter/src/core/widgets/navbar/desktop_navbar.dart';
import 'package:nook_control_flutter/src/features/authentication/presentation/screens/login_screen.dart';
import 'package:nook_control_flutter/src/features/authentication/presentation/screens/main_screen.dart';
import 'package:nook_control_flutter/src/features/authentication/presentation/screens/register_screen.dart';
import 'package:nook_control_flutter/src/features/movies/presentation/screens/movie_details_screen.dart';
import 'package:nook_control_flutter/src/features/movies/presentation/screens/search_movies_screen.dart';
import 'package:nook_control_flutter/src/features/tv_shows/presentation/screens/search_tv_shows_screen.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');

final GlobalKey<NavigatorState> _shellNavbarKey = GlobalKey<NavigatorState>(debugLabel: 'navbarShell');

final GoRouter mainRouter = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      redirect: (context, state) => LoginScreen.route,
    ),
    GoRoute(
      path: LoginScreen.route,
      name: 'Login',
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: RegisterScreen.route,
      builder: (context, state) => const RegisterScreen(),
    ),
    ShellRoute(
      // navigatorKey: _shellNavbarKey,
      builder: (context, state, child) {
        return DesktopNavbar(state: state, child: child);
      },
      routes: [
        GoRoute(
          path: MainScreen.route,
          pageBuilder: (context, state) => const NoTransitionPage(child: MainScreen()),
        ),
        GoRoute(
          path: SearchMoviesScreen.route,
          pageBuilder: (context, state) => NoTransitionPage(child: SearchMoviesScreen.builder(context, state)),
          routes: [
            GoRoute(
              path: MovieDetailsScreen.route,
              pageBuilder: (context, state) => NoTransitionPage(child: MovieDetailsScreen.builder(context, state)),
              redirect: (context, state) {
                String? movieId = state.uri.queryParameters['movie_id'];
                if (movieId == null || int.tryParse(movieId) == null) {
                  return SearchMoviesScreen.route;
                }
                return null;
              },
            ),
          ],
        ),
        GoRoute(
          path: SearchTvShowsScreen.route,
          pageBuilder: (context, state) => NoTransitionPage(child: SearchTvShowsScreen.builder(context, state)),
        ),
      ],
    ),
  ],
  redirect: (context, state) async {
    final bool loggedIn = (await serverpodClient.authenticationKeyManager?.get()) != null;
    final bool onAuthPage = state.matchedLocation == LoginScreen.route || state.matchedLocation == RegisterScreen.route;
    if (!loggedIn) {
      if (onAuthPage) {
        return null;
      }
      return LoginScreen.route;
    }
    if (loggedIn && onAuthPage) {
      return MainScreen.route;
    }
    return null;
  },
);
