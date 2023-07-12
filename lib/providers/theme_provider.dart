import 'package:dghub_ui/components/global.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeProvider() {
    getThemeMode = themeMode(storage.read('theme_mode') ?? 'system');
    if (kDebugMode) {
      print('Storage theme mode: ' + storage.read('theme_mode').toString());
    }
  }

  ThemeMode? getThemeMode;

  change(String t) {
    storage.write('theme_mode', t);
    getThemeMode = themeMode(t);
    notifyListeners();
  }

  ThemeMode themeMode(String t) {
    switch (t) {
      case 'system':
        return ThemeMode.system;
      case 'dark':
        return ThemeMode.dark;
      case 'light':
        return ThemeMode.light;
      default:
        return ThemeMode.system;
    }
  }
}
