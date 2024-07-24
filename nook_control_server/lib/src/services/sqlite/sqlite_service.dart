import 'package:nook_control_server/src/generated/user.dart';
import 'package:sqlite3/sqlite3.dart';
import 'package:uuid/uuid.dart';

class SqliteService {
  static late final SqliteService _singleton; // = SqliteService._internal();
  final Database _db;

  factory SqliteService() {
    return _singleton;
  }

  static void initialize({
    required String databasePath,
  }) {
    final Database database = sqlite3.open(
      databasePath,
    );
    if (!_checkIfTableExists('users', database)) {
      _createUsersTable(database);
    }
    _singleton = SqliteService._internal(
      database: database,
    );
  }

  SqliteService._internal({
    required Database database,
  }) : _db = database;

  static bool _checkIfTableExists(String tableName, Database database) {
    final ResultSet result = database.select("SELECT name FROM sqlite_master WHERE type='table' AND name='$tableName';");
    return result.length == 1;
  }

  static void _createUsersTable(Database database) {
    database.execute(
      '''
        CREATE TABLE users (
          id INTEGER NOT NULL PRIMARY KEY,
          uuid TEXT NOT NULL UNIQUE,
          username TEXT NOT NULL UNIQUE,
          password TEXT NOT NULL,
          role TEXT NOT NULL
        );
      ''',
    );
  }

  void registerUser(User user) {
    final statement = _db.prepare('''
        INSERT INTO users 
          (
            uuid,
            username,
            password,
            role
          ) 
        VALUES
          (?, ?, ?, ?)
      ''');
    final String uuid = Uuid().v1();
    final String role = 'default';
    statement.execute([
      uuid,
      user.username,
      user.password,
      role,
    ]);
    statement.dispose();
  }

  bool checkUserPassword(User user) {
    final ResultSet queryResult = _db.select("SELECT password FROM users WHERE username='${user.username}'");
    if (queryResult.length != 1) {
      print('[LOGIN ATTEMPT] No user found with the username ${user.username}!');
      return false;
    }
    if (queryResult.first['password'] == user.password) {
      return true;
    }
    print('[LOGIN ATTEMPT] Password for ${user.username} doesn\'t match!');
    return false;
  }

  int getUserId(User user) {
    final ResultSet queryResult = _db.select("SELECT id FROM users WHERE username='${user.username}'");
    if (queryResult.length != 1) {
      print('[USER ID ATTEMPT] No user found with the username ${user.username}!');
      return -1;
    }
    return queryResult.first['id'] ?? -1;
  }

  static void close() {
    _singleton._db.dispose();
  }
}
