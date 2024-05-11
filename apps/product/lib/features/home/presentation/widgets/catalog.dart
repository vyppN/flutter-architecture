import 'package:flutter/cupertino.dart';
import 'package:product/features/home/domain/entities/product.dart';
import 'package:product/features/home/presentation/widgets/product_list.dart';
import 'package:core_ui/widgets/elements/texts/text_title.dart';


class Catalog extends StatelessWidget {

  final List<ProductToDisplay> products;
  final OnSelectProduct? onSelectProduct;

  final String title;

  const Catalog({super.key, required this.products, required this.title, this.onSelectProduct});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 24),
          child: TextTitle(title: title),
        ),
        ProductList(products: products,onSelectProduct: onSelectProduct,)
      ],
    );
  }
  
}