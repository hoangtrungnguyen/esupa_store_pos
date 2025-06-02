import 'dart:developer';

import 'package:postgres/postgres.dart';

///Access to postgres server
class PostgresAccess {
  ///Constructor for PostgresAccess
  PostgresAccess({
    required Endpoint endpoint,
    required ConnectionSettings settings,
  }) : _endpoint = endpoint,
       _settings = settings;

  // Connection connection;
  final Endpoint _endpoint;

  final ConnectionSettings _settings;

  late Connection _connection;

  ///Open connection to postgres server
  Future<void> openConnection() async {
    // final conn = await Connection.open(
    //   Endpoint(
    //     host: 'localhost',
    //     database: 'postgres',
    //     username: 'user',
    //     password: 'pass',
    //   ),
    //   The postgres server hosted locally doesn't have SSL by default. If you're
    //   accessing a postgres server over the Internet, the server should support
    //   SSL and you should swap out the mode with `SslMode.verifyFull`.
    //   settings: ConnectionSettings(sslMode: SslMode.disable),
    // );

    final conn = await Connection.open(_endpoint, settings: _settings);
    log('has connection!');
    _connection = conn;
  }

  ///Close connection to postgres server
  Future<void> closeConnection() async {
    await _connection.close();
  }

  Connection get connection => _connection;
}
