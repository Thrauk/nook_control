import 'package:go_router/go_router.dart';
import 'package:nook_control_client/nook_control_client.dart';
import 'package:flutter/material.dart';
import 'package:nook_control_flutter/src/features/authentication/domain/auth_manager.dart';
import 'package:nook_control_flutter/src/features/authentication/domain/simple_auth_key_manager.dart';
import 'package:nook_control_flutter/src/features/authentication/presentation/screens/login_screen.dart';
import 'package:nook_control_flutter/src/features/authentication/presentation/screens/main_screen.dart';
import 'package:nook_control_flutter/src/features/authentication/presentation/screens/register_screen.dart';
import 'package:nook_control_flutter/src/router.dart';
import 'package:provider/provider.dart';
import 'package:serverpod_auth_shared_flutter/serverpod_auth_shared_flutter.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import 'package:url_strategy/url_strategy.dart';

// Sets up a singleton client object that can be used to talk to the server from
// anywhere in our app. The client is generated from your server code.
// The client is set up to connect to a Serverpod running on a local server on
// the default port. You will need to modify this to connect to staging or
// production servers.

var authManager = SimpleAuthKeyManager();

var serverpodClient = Client(
  'http://$localhost:8080/',
  authenticationKeyManager: authManager,
)..connectivityMonitor = FlutterConnectivityMonitor();

late SessionManager sessionManager;

void main() async {
  setPathUrlStrategy();
  GoRouter.optionURLReflectsImperativeAPIs = true;
  authManager.addListener(
    () {
      print('Something happened!');
      mainRouter.refresh();
    },
  );
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ShadApp.materialRouter(
      title: 'N00k Control',
      darkTheme: ShadThemeData(
        brightness: Brightness.dark,
        colorScheme: ShadColorScheme.fromName('orange', brightness: Brightness.dark),
      ),
      routerConfig: mainRouter,
    );
  }
}
