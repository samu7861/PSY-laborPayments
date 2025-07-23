import 'package:flutter/material.dart';

class AppTheme {
  // Light theme colors (unchanged)
  static const Color _lightPrimaryColor = Color(0xFF4f87b2);
  static const Color _lightSecondaryColor = Color(0xFF05070a);

  // Dark theme colors based on your UI mockups
  static const Color _darkPrimaryColor = Color(0xFF0096FF);
  static const Color _darkSecondaryColor = Color(0xFF05070A);

  /// Light theme (no changes)
  ThemeData get lightTheme => ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: _lightPrimaryColor,
          secondary: _lightSecondaryColor,
          brightness: Brightness.light,
        ),
        brightness: Brightness.light,
      );

  /// Dark theme with the bright blue button color and deep‐black background
  ThemeData get darkTheme => ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: _darkSecondaryColor,
        colorScheme: ColorScheme.fromSeed(
          seedColor: _darkPrimaryColor,
          secondary: _darkSecondaryColor,
          brightness: Brightness.dark,
        ),
        brightness: Brightness.dark,
      );
}
