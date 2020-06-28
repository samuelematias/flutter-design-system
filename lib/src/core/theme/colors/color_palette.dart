import 'package:flutter/material.dart';

class ColorPalette {
  ColorPalette._();

  static final MaterialColor materialColorWhite = MaterialColor(
    0xFFFFFFFF,
    <int, Color>{
      50: Color(0xFFFFFFFF),
      100: Color(0xFFFFFFFF),
      200: Color(0xFFFFFFFF),
      300: Color(0xFFFFFFFF),
      400: Color(0xFFFFFFFF),
      500: Color(0xFFFFFFFF),
      600: Color(0xFFFFFFFF),
      700: Color(0xFFFFFFFF),
      800: Color(0xFFFFFFFF),
      900: Color(0xFFFFFFFF),
    },
  );

  static final MaterialColor materialColorBlack = MaterialColor(
    0xFF000000,
    <int, Color>{
      50: Color(0xFF000000),
      100: Color(0xFF000000),
      200: Color(0xFF000000),
      300: Color(0xFF000000),
      400: Color(0xFF000000),
      500: Color(0xFF000000),
      600: Color(0xFF000000),
      700: Color(0xFF000000),
      800: Color(0xFF000000),
      900: Color(0xFF000000),
    },
  );

  static const Color overlay50 = Color.fromRGBO(0, 0, 0, 0.24);
  static const Color overlay100 = Color.fromRGBO(0, 0, 0, 0.35);
  static const Color red50 = Color(0xFFC41835);
  static const Color green50 = Color(0xFF50A773);
  static const Color grey50 = Color(0xFFF2F2F2);
  static const Color grey100 = Color(0xFFDCDCDC);
}
