import 'package:flutter/material.dart';

class PriceText extends StatelessWidget {
  final String price;
  final Color? color;

  const PriceText({super.key, required this.price, this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      price,
      style: TextStyle(
        fontFamily: 'Oswald',
        color: color ?? Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.w800,
      ),
    );
  }
}