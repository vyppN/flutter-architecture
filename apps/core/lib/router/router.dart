import 'package:go_router/go_router.dart';
import 'package:product/features/home/presentation/screens/home_screen.dart';

final router = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => const ProductHomePage(),
  )
]);