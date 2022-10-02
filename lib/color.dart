import 'package:flutter/material.dart';

class AppColor {
  static Color white = Colors.white;
  static Color black = Colors.grey.shade900;
  static const int _redPrimaryValue = 0xFFDE2040;
  static const MaterialColor red = MaterialColor(
    _redPrimaryValue,
    <int, Color>{
      50: Color(0xFFFBE4E8),
      100: Color(0xFFF5BCC6),
      200: Color(0xFFEF90A0),
      300: Color(0xFFE86379),
      400: Color(0xFFE3415D),
      500: Color(_redPrimaryValue),
      600: Color(0xFFDA1C3A),
      700: Color(0xFFD51832),
      800: Color(0xFFD1132A),
      900: Color(0xFFC80B1C),
    },
  );


  static const MaterialColor redAccent =
      MaterialColor(_redAccentValue, <int, Color>{
    100: Color(0xFFFFF4F5),
    200: Color(_redAccentValue),
    400: Color(0xFFFF8E95),
    700: Color(0xFFFF747D),
  });
  static const int _redAccentValue = 0xFFFFC1C5;
}
