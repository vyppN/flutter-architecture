import 'package:core/dependency_injection/inject.dart';
import 'package:core/router/router.dart';
import 'package:flutter/material.dart';
import 'package:product/main.dart';

void main() {
  registerServices();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
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