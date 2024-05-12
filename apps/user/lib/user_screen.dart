import 'package:core_ui/theme/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserScreen extends ConsumerWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final color = ref.watch(appThemeProvider).themeColor;
    return Scaffold(
      backgroundColor: color.backgroundPrimary,
      body: SafeArea(
        child: Center(
          child: Text('User Screen', style: TextStyle(color: color.text),),
        ),
      ),
    );
  }
}
