import 'package:esupa_store_pos/app/view/bloc/auth/auth_bloc.dart';
import 'package:esupa_store_pos/features/home/home.dart' show HomePage;
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../features/selling/selling.dart';
import 'splash_page.dart';

mixin PageRouter {
  GoRouter buildRouter(AuthBloc authBloc) {
    return GoRouter(
      initialLocation: Path.home,
      routes: <RouteBase>[
        GoRoute(
          path: Path.splash,
          builder:
              (BuildContext context, GoRouterState state) => const SplashPage(),
        ),
        GoRoute(
          path: Path.home,
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
  static const home = '/home';
  static const selling = '/selling';
}
