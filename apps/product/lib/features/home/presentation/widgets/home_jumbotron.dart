import 'package:flutter/material.dart';
import 'package:core_ui/widgets/elements/buttons/primary_button.dart';
import 'package:core_ui/widgets/elements/texts/big_text.dart';

class HomeJumbotron extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String buttonTitle;

  const HomeJumbotron({super.key, required this.imageUrl, required this.title, required this.buttonTitle});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          Image.network(
            imageUrl,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    BigText(title: title),
                    PrimaryButton(title: buttonTitle, onPress: (){print(title);},)
                  ],
                ),
              ),
            ],
          ),)
        ],
      ),
    );
  }

}