import 'package:nook_control_client/nook_control_client.dart';

class SimpleAuthKeyManager extends AuthenticationKeyManager {
  String? _key;

  @override
  Future<String?> get() async {
    return _key;
  }

  @override
  Future<void> put(String key) async {
    _key = key;
  }

  @override
  Future<void> remove() async {
    _key = null;
  }
}
