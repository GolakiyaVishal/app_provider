import 'package:flutter/material.dart';

import 'app_theme.dart';

enum ThemeType { Light, Dark }

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.system;
  ThemeData currentTheme = darkTheme;
  ThemeType _themeType = ThemeType.Dark;

  toggleTheme() {
    if (_themeType == ThemeType.Dark) {
      themeMode = ThemeMode.dark;
      currentTheme = lightTheme;
      _themeType = ThemeType.Light;
      return notifyListeners();
    }

    if (_themeType == ThemeType.Light) {
      themeMode = ThemeMode.light;
      currentTheme = darkTheme;
      _themeType = ThemeType.Dark;
      return notifyListeners();
    }
  }
}
