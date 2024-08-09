import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nook_control_flutter/src/core/styles/colors.dart';
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
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Row(
        children: [
          Container(
            width: 200,
            color: ATColors.darkGrey,
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    context.push(MainScreen.route);
                  },
                  child: Text(
                    'Home',
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    context.push(SearchTvShowsScreen.route);
                  },
                  child: Text(
                    'Tv Shows',
                  ),
                ),
              ],
            ),
          ),
          Expanded(child: child),
        ],
      ),
    );
  }
}
