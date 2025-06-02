import 'package:data_layer/src/data_sources/postgres/postgres_access.dart';
import 'package:postgres/postgres.dart';

class ProductDataSource {
  ProductDataSource(this._postgresAccess);

  PostgresAccess _postgresAccess;

  Future<List<Map<String, dynamic>>> findAll() async {
    final result = await _postgresAccess.connection.execute(
      Sql('SELECT * FROM products LIMIT 50'),
    );

    return result.map((e) => e.toColumnMap()).toList();
  }
}
