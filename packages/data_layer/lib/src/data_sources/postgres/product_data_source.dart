import 'package:data_layer/src/data_sources/postgres/postgres_access.dart';

class ProductDataSource {
  ProductDataSource(this._postgresAccess);

  PostgresAccess _postgresAccess;

  Future<dynamic> query() async {}
}
