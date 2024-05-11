import 'package:flutter/material.dart';
import 'package:product/features/home/domain/entities/product.dart';
import 'package:core_ui/widgets/elements/texts/price_text.dart';
import 'package:core_ui/widgets/elements/texts/small_text.dart';

typedef ProductCardTap = Function(ProductToDisplay product);

class ProductCard extends StatelessWidget {
  final ProductToDisplay product;
  final ProductCardTap? onTap;

  const ProductCard({super.key, required this.product, this.onTap});

  final double width = 200;
  final double height = 240;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if(onTap != null){
          onTap!(product);
        }
      },
      child: SizedBox(
        width: width,
        height: height,
        child: Stack(children: [
          Image.network(product.imageUrl, width: width, height: height, fit: BoxFit.contain,),
          Column(
            children: [
              const Spacer(),
              Container(
                color: const Color(0x88000000),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                          width: 100,
                          child:
                          SmallText(
                            title: product.name,
                            color: Colors.white,
                          )
                      ),
                      PriceText(price: '${product.price}\$'),
                    ],
                  ),
                ),
              )
            ],
          )
        ],),
      ),
    );
  }

}