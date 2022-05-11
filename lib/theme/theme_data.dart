import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData buildLightThemeData(BuildContext context) {
  return buildThemeData(context);
}

ThemeData buildDarkThemeData(BuildContext context) {
  return buildThemeData(context);
}

ThemeData buildThemeData(BuildContext context) {
  final standardTextTheme = Theme.of(context).textTheme;
  final textTheme = GoogleFonts.interTextTheme(standardTextTheme).copyWith(button: standardTextTheme.button!.copyWith(fontWeight: FontWeight.w600)).apply(
        fontSizeFactor: 0.8,
        fontSizeDelta: 1,
      );
  return ThemeData(
    primaryColor: Color(0xFF344966),
    primarySwatch: MaterialColor(0xFF344966, {
      50: Color(0xFF344966).withOpacity(0.1),
      100: Color(0xFF344966).withOpacity(0.2),
      200: Color(0xFF344966).withOpacity(0.4),
      300: Color(0xFF344966).withOpacity(0.6),
      400: Color(0xFF344966).withOpacity(0.8),
      500: Color(0xFF344966).withOpacity(1),
      600: Color(0xFF344966).withOpacity(1),
      700: Color(0xFF344966).withOpacity(1),
      800: Color(0xFF344966).withOpacity(1),
      900: Color(0xFF344966).withOpacity(1),
    }),
    textTheme: textTheme,
  );
}
