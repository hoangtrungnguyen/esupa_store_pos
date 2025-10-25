import 'package:esupa_store_pos/app/view/pages/page_router.dart';
import 'package:esupa_store_pos/bootstrap.dart';
import 'package:esupa_store_pos/data_source/auth_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'bloc/auth/auth_bloc.dart';

class AppRoot extends StatefulWidget {
  const AppRoot({super.key});

  @override
  State<AppRoot> createState() => _AppRootState();
}

class _AppRootState extends State<AppRoot> with PageRouter {
  late final AuthBloc _authBloc;
  late final GoRouter _router;

  @override
  void initState() {
    super.initState();
    super.initState();
    _authBloc = AuthBloc(
        authRepository: getIt.get<AuthRepository>()
    );
    _router = buildRouter(_authBloc); // Pass bloc to the router builder
    // _authBloc.add(const AuthEvent.appStarted()); // Initial check
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (context) => _authBloc,
        ),
      ],
      child: MaterialApp.router(
        routerConfig: _router,
        title: "POS App",
        theme: ThemeData(primarySwatch: Colors.blue),
      ),
    );
  }

  @override
  void dispose() {
    _authBloc.close(); // Don't forget to close the Bloc
    super.dispose();
  }
}
