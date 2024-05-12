import 'package:flutter/material.dart';

abstract class IThemeColor {
  late Color backgroundPrimary;
  late Color backgroundSecondary;
  late Color text;
  late Color selectedItem;
  late Color unSelectedItem;
}

class LightTheme implements IThemeColor {
  @override
  Color backgroundPrimary = Colors.white;

  @override
  Color backgroundSecondary = Colors.black;

  @override
  Color selectedItem = Colors.green;

  @override
  Color text = Colors.black;

  @override
  Color unSelectedItem = Colors.grey;

}

class DarkTheme implements IThemeColor {
  @override
  Color backgroundPrimary = const Color(0xFF001516);

  @override
  Color backgroundSecondary = Colors.grey;

  @override
  Color selectedItem = Colors.green.shade700;

  @override
  Color text = Colors.white;

  @override
  Color unSelectedItem = Colors.grey.shade600;

}


final lightTheme = LightTheme();
final darkTheme = DarkTheme();