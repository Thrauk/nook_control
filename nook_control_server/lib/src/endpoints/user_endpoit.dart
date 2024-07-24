import 'package:nook_control_server/src/generated/protocol.dart';
import 'package:nook_control_server/src/generated/user.dart';
import 'package:nook_control_server/src/services/auth/jwt_repository.dart';
import 'package:nook_control_server/src/services/sqlite/sqlite_service.dart';
import 'package:serverpod/serverpod.dart';

class UserEndpoit extends Endpoint {
  Future<bool> register(Session session, User user) async {
    print('user: ${user.username}, pass: ${user.password}');
    SqliteService().registerUser(user);
    return true;
  }

  Future<AuthResponse> login(Session session, User user) async {
    final bool result = SqliteService().checkUserPassword(user);
    print("User ${user.username} logged in ${result ? 'successfully' : 'unsucessfully'}");
    if (result) {
      final int userId = SqliteService().getUserId(user);
      final String token = JwtRepository().createToken(user.copyWith(id: userId));
      return AuthResponse(success: true, token: token);
    }
    return AuthResponse(success: false);
  }
}
