import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BigText extends StatelessWidget {

  final String title;
  final Color? color;

  const BigText({super.key, required this.title, this.color});



  @override
  Widget build(BuildContext context) {
    return Text(
        title,
      style: TextStyle(
        fontFamily: 'Oswald',
        color: color ?? Colors.white,
        fontWeight: FontWeight.w800,
        fontSize: 40,
      ),
    );
  }

}