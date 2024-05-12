import 'package:core_ui/theme/theme_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:product/features/home/domain/entities/product.dart';
import 'package:product/features/home/presentation/widgets/product_list.dart';
import 'package:core_ui/widgets/elements/texts/text_title.dart';


class Catalog extends ConsumerWidget {

  final List<ProductToDisplay> products;

  final String title;

  const Catalog({super.key, required this.products, required this.title});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final color = ref.watch(appThemeProvider).themeColor;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 24),
          child: TextTitle(title: title, color: color.text,),
        ),
        ProductList(products: products)
      ],
    );
  }
  
}