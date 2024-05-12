import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:product/features/home/domain/entities/product.dart';
import 'package:product/features/home/presentation/viewmodels/home_viewmodel.dart';
import 'package:product/features/home/presentation/widgets/product_card.dart';

typedef OnSelectProduct = Function(ProductToDisplay product);

class ProductList extends ConsumerWidget {
  final List<ProductToDisplay> products;

  const ProductList({super.key, required this.products});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homeVMNotifier = ref.read(homeViewModelProvider.notifier);

    return SizedBox(
      height: 220,
      width: MediaQuery.of(context).size.width,
      child:  ListView.separated(
          separatorBuilder: (context, index) {
            return const SizedBox(width: 16,);
          },
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
          scrollDirection: Axis.horizontal,
          itemCount: products.length,
          itemBuilder: (context, index) {
            return ProductCard(
              key: UniqueKey(),
              product: products[index],
              onTap: (product) => homeVMNotifier.onSelectProduct(context, product),
            );
          },
      ),
    );
  }

}