import 'package:go_router/go_router.dart';
import 'package:nook_control_flutter/main.dart';
import 'package:nook_control_flutter/src/features/authentication/presentation/screens/login_screen.dart';
import 'package:nook_control_flutter/src/features/authentication/presentation/screens/main_screen.dart';
import 'package:nook_control_flutter/src/features/authentication/presentation/screens/register_screen.dart';

final GoRouter mainRouter = GoRouter(
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
    GoRoute(
      path: MainScreen.route,
      builder: (context, state) => const MainScreen(),
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
