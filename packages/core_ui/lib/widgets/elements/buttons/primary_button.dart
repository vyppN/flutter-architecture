import 'package:flutter/material.dart';
import 'package:core_ui/widgets/elements/texts/small_text.dart';

class PrimaryButton extends StatelessWidget {

  final Function()? onPress;
  final String title;
  final Color? titleColor;

  const PrimaryButton({super.key, required this.title, this.titleColor, this.onPress});


  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPress,
        style: TextButton.styleFrom(
          backgroundColor: const Color(0xFFEBEBEB),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
          )
        ),
        child: SmallText(
          title: title,
          color: titleColor,
        )
    );
  }

}