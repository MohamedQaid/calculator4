import 'package:calculator4/src/theme/theme_app.dart';
import 'package:flutter/material.dart';

class ProviderTheme extends ChangeNotifier {
  bool modeThemeLightEnable = false;

  changeTheme() {
    modeThemeLightEnable = !modeThemeLightEnable;
    notifyListeners();
  }

  ThemeData get currentTheme {
    ThemeApp themeApp = ThemeApp();
    return modeThemeLightEnable ? themeApp.lightTheme : themeApp.darkTheme;
  }
}
