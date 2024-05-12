import 'package:core_ui/theme/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SearchInput extends ConsumerWidget {

  const SearchInput({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final color = ref.watch(appThemeProvider).themeColor;
    return  SizedBox(
      height: 48,
      child: TextField(
        style: TextStyle(color: color.text),
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              borderSide: BorderSide(color: color.text)
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              borderSide: BorderSide(color: color.text),
          ),
          suffixIcon: Align(
            widthFactor: 1.0,
            heightFactor: 1.0,
            child: Icon(
              Icons.search,
              color: color.text,
            ),
          )
        ),
      ),
    );
  }

}