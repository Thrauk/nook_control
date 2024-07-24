import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nook_control_flutter/src/features/authentication/presentation/widgets/login_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  static const String route = '/login';
  static const String fullPath = '/login';

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
    return const LoginScreen();
  }

  @override
  Widget build(BuildContext context) {
    return const LoginForm();
  }
}
