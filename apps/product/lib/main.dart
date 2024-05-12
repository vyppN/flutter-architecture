import 'package:core_libs/dependency_injection/get_it.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:product/infrastructure/dependency_injection/inject.dart';
import 'package:product/infrastructure/router/router.dart';

void main() {
  registerCoreServices();
  registerProductServices();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
    );
  }
}