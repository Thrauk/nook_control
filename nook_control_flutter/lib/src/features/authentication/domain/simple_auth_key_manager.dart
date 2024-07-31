import 'package:flutter/material.dart';
import 'package:nook_control_client/nook_control_client.dart';
import 'package:serverpod_auth_shared_flutter/serverpod_auth_shared_flutter.dart';

class SimpleAuthKeyManager extends FlutterAuthenticationKeyManager with ChangeNotifier {
  @override
  Future<void> put(String key) async {
    await super.put(key);
    notifyListeners();
  }

  @override
  Future<void> remove() async {
    await super.remove();
    notifyListeners();
  }

  Future<bool> get isLoggedIn async => (await get()) != null;
}
