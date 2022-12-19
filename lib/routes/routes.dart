import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router_example/layouts/dashboardLayout.dart';
import 'package:go_router_example/pages/details.dart';
import 'package:go_router_example/pages/home.dart';
import 'package:go_router_example/pages/login.dart';
import 'package:go_router_example/pages/tablero.dart';

final GoRouter router = GoRouter(initialLocation: '/', routes: <RouteBase>[
  ShellRoute(
      builder: (context, state, child) {
        return DashBoardLayout(child: child);
      },
      routes: <RouteBase>[
        appRoute('/', HomeScreen()),
        appRoute('/details', DetailsScreen()),
        appRoute('/tablero', Tablero())
      ]),

  appRoute('/login', Login())

  //
]);

appRoute(String route, Widget page) {
  return GoRoute(
    path: route,
    pageBuilder: (context, state) {
      return CustomTransitionPage<void>(
        child: page,
        transitionDuration: const Duration(milliseconds: 0),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(
            opacity: CurveTween(curve: Curves.easeInOut).animate(animation),
            child: child,
          );
        },
      );
    },
  );
}

appRouter() {
  return router;
}
