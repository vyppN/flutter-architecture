import 'package:core_ui/theme/theme_provider.dart';
import 'package:core_ui/theme/theme_state.dart';
import 'package:flutter/material.dart';
import 'package:core_ui/widgets/elements/inputs/search_input.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeNavbar extends ConsumerWidget {
  const HomeNavbar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final themeNotifier = ref.read(appThemeProvider.notifier);
    final themeProvider = ref.watch(appThemeProvider);

    return  Container(
      color:themeProvider.themeColor.backgroundPrimary,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            const Expanded(child: SearchInput()),

            IconButton(
                onPressed: themeNotifier.switchTheme,
                icon: Icon(
                  themeProvider.selectedTheme == Themes.light
                   ? Icons.dark_mode
                   : Icons.light_mode,
                  color: themeProvider.themeColor.text,
                  size: 40,
                )
            ),
          ],
        ),
      ),
    );
  }

}