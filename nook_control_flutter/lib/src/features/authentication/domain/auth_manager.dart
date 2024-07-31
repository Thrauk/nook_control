import 'package:flutter/material.dart';

enum AuthState { authenticated, unauthenticated, unkown }

class AuthManager {
  static final AuthManager _singleton = AuthManager._internal();

  factory AuthManager() {
    return _singleton;
  }

  late AuthNotifier authNotifier;

  AuthManager._internal() {
    authNotifier = AuthNotifier();
  }
}

class AuthNotifier with ChangeNotifier {
  AuthState authState = AuthState.unkown;

  void login() {
    authState = AuthState.authenticated;
    notifyListeners();
  }

  void logout() {
    authState = AuthState.unauthenticated;
    notifyListeners();
  }

  void setAuthState(AuthState newState) {
    authState = newState;
    notifyListeners();
  }
}
