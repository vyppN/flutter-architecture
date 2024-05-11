import 'package:flutter/material.dart';

class TextTitle extends StatelessWidget {

  final String title;
  final Color? color;

  const TextTitle({super.key, required this.title, this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontFamily: 'Montserrat',
        color: color ?? const Color(0xFF222222),
        fontSize: 24,
        fontWeight: FontWeight.w500,
      ),
    );
  }

}