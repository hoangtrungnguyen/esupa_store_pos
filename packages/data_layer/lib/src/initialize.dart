import 'package:data_layer/src/data_sources/data_sources.dart';
import 'package:data_layer/src/data_sources/postgres/product_data_source.dart';
import 'package:data_layer/src/repositories/order_repository.dart';
import 'package:data_layer/src/repository_impl/postgres_product_repository_impl.dart';
import 'package:get_it/get_it.dart';
import 'package:postgres/postgres.dart';

final GetIt _getIt = GetIt.instance;

/// Initialize data layer
Future<void> initialize() async {
  GetIt.I.registerSingletonAsync<PostgresAccess>(() async {
    final endPoint = Endpoint(
      host: '192.168.2.200',
      database: 'ebond_pos_1530',
      username: 'postgres',
      password: 'Ohmidas@12340',
    );
    const settings = ConnectionSettings(sslMode: SslMode.disable);
    final postgresAccess = PostgresAccess(
      endpoint: endPoint,
      settings: settings,
    );
    await postgresAccess.openConnection();
    return postgresAccess;
  });

  GetIt.I.registerSingletonWithDependencies<ProductRepository>(
    () => PostgresProductRepositoryImpl(
      ProductDataSource(_getIt<PostgresAccess>()),
    ),
    // Access RestService here
    dependsOn: [PostgresAccess], // IMPORTANT: Specify the dependency type
  );
}
