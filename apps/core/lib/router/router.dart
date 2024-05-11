import 'package:core/layouts/bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:product/features/home/presentation/screens/home_screen.dart';
import 'package:product/infrastructure/router/router.dart';

final routes = [
  'home'
];

final router = GoRouter(routes: [
  ShellRoute(
    pageBuilder: (context, state, child) {
      return NoTransitionPage(child: BottomNavigation(
        location: state.matchedLocation,
        child: child,
      ));
    },
      routes: [
        GoRoute(
          path: '/',
          name: 'home',
          builder: (context, state) => const ProductHomePage(),
        )
      ]
  ),
  ...productRoutes,
]);