import 'package:flutter/material.dart';
import 'package:notify_categories/Theme/CustomTheme.dart';
enum ThemeType { Light, Dark }

class ThemeModel extends ChangeNotifier {
  ThemeData currentTheme = DarkTheme;
  ThemeType _themeType = ThemeType.Dark;

  toggleTheme() {
    if (_themeType == ThemeType.Dark) {
      currentTheme = LightTheme;
      _themeType = ThemeType.Light;
      return notifyListeners();
    }

    if (_themeType == ThemeType.Light) {
      currentTheme = DarkTheme;
      _themeType = ThemeType.Dark;
      return notifyListeners();
    }
  }
}