import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nook_control_flutter/main.dart';
import 'package:nook_control_flutter/src/core/styles/colors.dart';
import 'package:nook_control_flutter/src/core/widgets/navbar/desktop_navbar_button.dart';
import 'package:nook_control_flutter/src/features/authentication/presentation/screens/main_screen.dart';
import 'package:nook_control_flutter/src/features/tv_shows/presentation/screens/search_tv_shows_screen.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class DesktopNavbar extends StatelessWidget {
  const DesktopNavbar({
    super.key,
    required this.state,
    required this.child,
  });

  final GoRouterState state;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 200,
                decoration: const BoxDecoration(
                  color: ATColors.dark,
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      DesktopNavbarButton(
                        onPressed: () => _onNavigationPressed(
                          context: context,
                          targetRoute: MainScreen.route,
                        ),
                        isSelected: _isRouteSelected(MainScreen.route, context),
                        buttonLabel: 'Home',
                      ),
                      DesktopNavbarButton(
                        onPressed: () => _onNavigationPressed(
                          context: context,
                          targetRoute: '',
                        ),
                        isSelected: false,
                        buttonLabel: 'Search',
                      ),
                      DesktopNavbarButton(
                        onPressed: () => _onNavigationPressed(
                          context: context,
                          targetRoute: '',
                        ),
                        isSelected: false,
                        buttonLabel: 'Library',
                      ),
                      DesktopNavbarButton(
                        onPressed: () => _onNavigationPressed(
                          context: context,
                          targetRoute: SearchTvShowsScreen.route,
                        ),
                        isSelected: _isRouteSelected(SearchTvShowsScreen.route, context),
                        buttonLabel: 'TV Shows',
                      ),
                      const Spacer(),
                      DesktopNavbarButton(
                        onPressed: () => _onNavigationPressed(
                          context: context,
                          targetRoute: '',
                        ),
                        isSelected: false,
                        buttonLabel: 'Settings',
                      ),
                      ShadButton.destructive(
                        onPressed: () async {
                          await serverpodClient.authenticationKeyManager?.remove();
                        },
                        width: double.infinity,
                        child: const Text('Log Out'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(child: child),
          ],
        ),
      ),
    );
  }

  void _onNavigationPressed({
    required BuildContext context,
    required String targetRoute,
  }) {
    if (_isRouteSelected(targetRoute, context)) {
      context.go(targetRoute);
    } else {
      context.push(targetRoute);
    }
  }

  bool _isRouteSelected(String route, context) => GoRouterState.of(context).uri.toString() == route;
}
