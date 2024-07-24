import 'package:nook_control_server/src/generated/protocol.dart';
import 'package:nook_control_server/src/generated/user.dart';
import 'package:nook_control_server/src/services/auth/jwt_repository.dart';
import 'package:nook_control_server/src/services/sqlite/sqlite_service.dart';
import 'package:serverpod/serverpod.dart';

class ResourceTestEndpoint extends Endpoint {
  @override
  bool get requireLogin => true;

  Future<bool> register(Session session, User user) async {
    return true;
  }
}
