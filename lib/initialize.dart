import 'package:data_layer/data_layer.dart' as data_layer;
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;

Future<dynamic> initialize() async {
  data_layer.initialize();

  await getIt.allReady();
}
