import 'package:esupa_store_pos/app/view/bloc/auth/auth_bloc.dart';
import 'package:esupa_store_pos/auth/login_page.dart';
import 'package:esupa_store_pos/features/home/home.dart' show HomePage;
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../features/selling/selling.dart';
import 'splash_page.dart';

mixin PageRouter {
  GoRouter buildRouter(AuthBloc authBloc) {
    return GoRouter(
      initialLocation: Path.login,
      routes: <RouteBase>[
        GoRoute(path: Path.login,
        builder: (context, state) => LoginPage()),
        GoRoute(
          path: Path.splash,
          builder:
              (BuildContext context, GoRouterState state) => const SplashPage(),
        ),
        GoRoute(
          path: Path.home,
          name: "Home Page",
          builder:
              (BuildContext context, GoRouterState state) => const HomePage(),
        ),
        GoRoute(
          path: Path.selling,
          builder:
              (BuildContext context, GoRouterState state) =>
                  const SellingPage(),
        ),
      ],
    );
  }
}

class Path {
  static const splash = '/splash';
  static const login = '/login';
  static const home = '/home';
  static const selling = '/selling';
}
