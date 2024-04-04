import 'package:flutter/material.dart';

ThemeData light = ThemeData(
  //colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
  colorSchemeSeed: Colors.orange,

  useMaterial3: true,
);

ThemeData dark = ThemeData.dark(
  useMaterial3: true,
);

class ThemeNotifier with ChangeNotifier {
  ThemeData _themeData;

  ThemeNotifier(this._themeData);

  getTheme() => _themeData;

  toggleTheme() async {
    if (_themeData == dark) {
      _themeData = light;
    } else {
      _themeData = dark;
    }
    notifyListeners();
  }

  getThemeIcon() {
    if (_themeData == dark) {
      return Icons.dark_mode;
    } else {
      return Icons.light_mode;
    }
    notifyListeners();
  }

  getText() {
    if (_themeData == dark) {
      return 'Dark';
    } else {
      return 'Light';
    }
    notifyListeners();
  }
}
