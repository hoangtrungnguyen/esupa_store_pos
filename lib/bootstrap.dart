import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:data_layer/data_layer.dart' as data_layer;
import 'package:flutter/widgets.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;

class AppBlocObserver extends BlocObserver {
  const AppBlocObserver();

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    log('onChange(${bloc.runtimeType}, $change)');
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    log('onError(${bloc.runtimeType}, $error, $stackTrace)');
    super.onError(bloc, error, stackTrace);
  }
}

Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  Bloc.observer = const AppBlocObserver();

  // Add cross-flavor configuration here

  //DATABASE
  data_layer.initialize();
  // ------

  await getIt.allReady();

  runApp(await builder());
}
