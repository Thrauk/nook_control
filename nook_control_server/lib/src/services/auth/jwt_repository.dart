import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:dotenv/dotenv.dart';
import 'package:nook_control_server/src/generated/protocol.dart';
import 'package:nook_control_server/src/generated/user.dart';

class JwtRepository {
  static final JwtRepository _singleton = JwtRepository._internal();
  late final DotEnv _env;
  late final String _jwtSecret;
  late final SecretKey _secretKey;

  factory JwtRepository() {
    return _singleton;
  }

  JwtRepository._internal() {
    _env = DotEnv(includePlatformEnvironment: true)..load();
    try {
      _jwtSecret = _env['JWT_SECRET']!;
    } catch (e) {
      throw Exception('ENV doesn\'t contain JWT secret!');
    }
    _secretKey = SecretKey(_jwtSecret);
  }

  String createToken(User user) {
    final DateTime expirationDate = DateTime.now().add(Duration(minutes: 2));
    final int expirationTimestamp = expirationDate.millisecondsSinceEpoch;
    final JwtPayload payload = JwtPayload(
      scopes: <String>['default'],
      username: user.username,
      expirationTimestamp: expirationTimestamp,
      id: user.id!,
    );

    final JWT jwt = JWT(payload.toJson(), issuer: 'n00ka-sv-w0rld');
    final String token = jwt.sign(_secretKey, expiresIn: Duration(minutes: 2));
    return token;
  }

  JWT? checkToken(String token) {
    try {
      final JWT jwt = JWT.verify(token, _secretKey);
      return jwt;
    } on JWTExpiredException {
      print('TOKEN EXPIRED');
    } on JWTException catch (ex) {
      print(ex.message);
    }
    return null;
  }

  int? extractIdFromJwt(JWT jwt) {
    return (jwt.payload as Map<String, dynamic>)['id'];
  }
}
