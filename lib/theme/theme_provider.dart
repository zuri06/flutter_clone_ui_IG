import 'package:flutter/material.dart';
import 'package:ig_application/theme/dark_mode.dart';
import 'package:ig_application/theme/light_mode.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _themeData = lightMode;

  ThemeData get themeData => _themeData;

  bool get isDarkMode => _themeData == darkMod;

  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  void toggleTheme() {
    if (_themeData == lightMode) {
      themeData = darkMod;
    } else {
      themeData = lightMode;
    }
  }
}
