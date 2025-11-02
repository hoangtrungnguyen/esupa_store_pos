import 'package:data_layer/data_layer.dart' as data_layer;
import 'package:esupa_store_pos/data_source/auth_repository.dart';
import 'package:esupa_store_pos/data_source/local_product_repository.dart'
    show LocalProductRepository;
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;

/// Initializes application-level dependencies.
Future<void> initialize() async {
  // Data Layer
  await data_layer.initialize();

  GetIt.I.registerLazySingleton<data_layer.ProductRepository>(
    () => LocalProductRepository(),
    // Access RestService here
  );
  // App-specific
  getIt.registerLazySingleton<AuthRepository>(() => AuthRepository());
}
