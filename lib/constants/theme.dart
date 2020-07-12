import 'package:flutter/material.dart';

import 'constants.dart';

class ThemeConst {
  static ThemeData light = ThemeData(
      brightness: Brightness.light,
      primaryColor: Constants.primaryColor,
      bottomNavigationBarTheme:
          BottomNavigationBarThemeData(backgroundColor: Colors.white),
      cardColor: Colors.white);

  static ThemeData dark = ThemeData(
      brightness: Brightness.dark,
      primaryColor: Constants.primaryColor,
      scaffoldBackgroundColor: Constants.backroundColor,
      cardColor: Constants.boxItemGrey);
}
