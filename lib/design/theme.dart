import 'package:flutter/material.dart';

import 'src/colors.dart';
import 'src/test.dart';

class DesignTheme {
  static final DesignThemeColors colors = DesignThemeColors();
  static final DesignThemeText text = DesignThemeText();
  static final ThemeData appTheme = ThemeData(
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}
