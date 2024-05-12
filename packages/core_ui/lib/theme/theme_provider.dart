
import 'package:core_ui/theme/color/theme_color.dart';
import 'package:core_ui/theme/theme_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme_provider.g.dart';

@riverpod
class AppTheme extends _$AppTheme {
  @override
  ThemeState build() => ThemeState(
      selectedTheme: Themes.light,
      themeColor: lightTheme,
  );

  void switchTheme() {
    if(state.selectedTheme == Themes.dark) {
      state = state.copyWith(
        selectedTheme: Themes.light,
        themeColor: lightTheme
      );
    } else {
      state = state.copyWith(
          selectedTheme: Themes.dark,
          themeColor: darkTheme
      );
    }
  }
}