import 'package:esupa_store_pos/data_source/auth_repository.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;

Future<dynamic> initialize() async {

  getIt.registerLazySingleton<AuthRepository>(() => AuthRepository());
}
