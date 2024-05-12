import 'package:go_router/go_router.dart';
import 'package:product/features/home/domain/entities/product.dart';
import 'package:product/features/home/presentation/screens/home_screen.dart';
import 'package:product/features/home/presentation/screens/product_detail_screen.dart';

final productRoutesForRoot = [
  GoRoute(
    path: '/detail',
    name: 'detail',
    builder: (context, state) {
      final product = state.extra as ProductToDisplay;
      return ProductDetailScreen(product: product,);
    },
  )
];

final router = GoRouter(routes: [
  GoRoute(
      path: '/',
      builder: (context, state) {
        return const ProductHomePage();
      },
      routes: [
        GoRoute(
          path: 'detail',
          name: 'detail',
          builder: (context, state) {
            final product = state.extra as ProductToDisplay;
            return ProductDetailScreen(product: product,);
          },
        )
      ]
  )
]);