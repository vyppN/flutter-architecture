import 'package:go_router/go_router.dart';
import 'package:product/features/home/presentation/screens/home_screen.dart';
import 'package:product/infrastructure/router/router.dart';

final router = GoRouter(routes: [
  GoRoute(
    path: '/',
    name: 'home',
    builder: (context, state) => const ProductHomePage(),
    routes: productRoutes
  ),
]);