import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:nook_control_server/src/services/auth/jwt_repository.dart';
import 'package:nook_control_server/src/services/sqlite/sqlite_service.dart';
import 'package:serverpod/serverpod.dart';
import 'package:sqlite3/sqlite3.dart';

import 'src/generated/protocol.dart';
import 'src/generated/endpoints.dart';

// This is the starting point of your Serverpod server.
void run(List<String> args) async {
  SqliteService.initialize(databasePath: 'database.db');
  // Initialize Serverpod and connect it with your generated code.
  final pod = Serverpod(
    args,
    Protocol(),
    Endpoints(),
    authenticationHandler: (Session session, String token) async {
      final JWT? jwt = JwtRepository().checkToken(token);
      if (jwt == null) {
        return null;
      }
      final JwtPayload payload = JwtPayload.fromJson(jwt.payload);
      Set<Scope> userScopes = payload.scopes.map((scope) => Scope(scope)).toSet();

      return AuthenticationInfo(payload.id, userScopes);
    },
  );

  // Start the server.
  await pod.start();
}
