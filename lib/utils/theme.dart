import 'package:flutter/material.dart';

class AppThemes {
  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF8B5DFF)),
    scaffoldBackgroundColor: Colors.white,
    primaryColor: const Color(0xFF8B5DFF),
    textTheme: _textTheme,
  );

  // Text theme
  static const TextTheme _textTheme = TextTheme(
    displayLarge: TextStyle(fontSize: 57, fontWeight: FontWeight.w600),
    displayMedium: TextStyle(fontSize: 45, fontWeight: FontWeight.w600),
    displaySmall: TextStyle(fontSize: 36, fontWeight: FontWeight.w600),
    headlineLarge: TextStyle(fontSize: 34, fontWeight: FontWeight.w600),
    headlineMedium: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
    headlineSmall: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
    titleLarge: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
    titleMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
    titleSmall: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
    bodyLarge: TextStyle(
      fontSize: 16,
    ),
    bodyMedium: TextStyle(
      fontSize: 15,
    ),
    bodySmall: TextStyle(
      fontSize: 14,
    ),
  );
}
