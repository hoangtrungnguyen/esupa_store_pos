import 'package:esupa_store_pos/app/view/app_root_page.dart';
import 'package:esupa_store_pos/initialize.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Required for async operations before runApp

  await initialize();

  runApp(const AppRootPage());
}
