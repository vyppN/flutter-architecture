import 'package:core_ui/theme/theme_provider.dart';
import 'package:core_ui/widgets/elements/texts/price_text.dart';
import 'package:core_ui/widgets/elements/texts/text_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'dart:io' show Platform;

import 'package:product/features/home/domain/entities/product.dart';

class ProductDetailScreen extends ConsumerStatefulWidget {
  final ProductToDisplay product;
  const ProductDetailScreen({super.key, required this.product});

  @override
  ConsumerState<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

String capitalize(String string) {
  return string[0].toUpperCase() + string.substring(1, string.length);
}

class _ProductDetailScreenState extends ConsumerState<ProductDetailScreen> {
  @override
  Widget build(BuildContext context) {
    final product = widget.product;
    final color = ref.watch(appThemeProvider).themeColor;

    return Scaffold(
      appBar: AppBar(
        title: Text(capitalize(product.category), style: TextStyle(color: color.text),),
        backgroundColor: color.backgroundPrimary,
        leading: IconButton(
          icon: Icon(
            Icons.chevron_left,
            color: color.text,
            size: 32,
          ), onPressed: context.pop,
        ),
      ),
      backgroundColor: color.backgroundPrimary,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children:  [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 300,
                child: Image.network(product.imageUrl)
              ),
              const SizedBox(height: 32,),
              TextTitle(title: product.name, color: Colors.blueAccent),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PriceText(price: 'Price: ${product.price}\$', color: Colors.red.shade600,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: null,
                          icon: Icon(Platform.isIOS ? Icons.ios_share : Icons.share, color: color.text,)
                      ),
                    ],
                  ),
                ],
              ),
              const Divider(),
              Text(product.description!, style: TextStyle(color: color.text),),
              const SizedBox(height: 64,),
              FilledButton(
                onPressed: (){print('ssss');},
                style: FilledButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  )
                ),
                child: const Text('Buy it now'),
              ),
              OutlinedButton(
                onPressed: (){print('ssss');},
                style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.blueAccent,
                    side: const BorderSide(color: Colors.blueAccent),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    )
                ),
                child: const Text('Add to cart'),
              )
            ]
          ),
        ),
      ),
    );
  }
}
