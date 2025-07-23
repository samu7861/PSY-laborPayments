import 'package:flutter/material.dart';

class AppTheme {
  // Light theme colors (unchanged)
  static const Color _lightPrimaryColor = Color(0xFF4f87b2);
  static const Color _lightSecondaryColor = Color(0xFF05070a);

  // Dark theme colors based on your UI mockups
  static const Color _darkPrimaryColor = Color(0xFF0096FF);
  static const Color _darkSecondaryColor = Color(0xFF05070A);
  static const Color _darkSurfaceColor = Color(0xFF141218);
    static const Color _darkPrimaryContainer = Color(0xFF1f2128);


  // Text colors
  static const Color _darkTextPrimary = Colors.white;
  static const Color _darkTextSecondary = Color(0xFFB0B0B0);

  /// Light theme (no changes to text styles)
  ThemeData get lightTheme => ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: _lightPrimaryColor,
          secondary: _lightSecondaryColor,
          brightness: Brightness.light,
        ),
        brightness: Brightness.light,
      );

  /// Dark theme with custom colors and text styles
  ThemeData get darkTheme => ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: _darkSecondaryColor,
        colorScheme: const ColorScheme.dark(
          primary: _darkPrimaryColor,
          onPrimary: _darkTextPrimary,
          secondary: _darkPrimaryColor,
          onSecondary: _darkTextPrimary,
          surface: _darkSurfaceColor,
          onSurface: _darkTextPrimary,
          onPrimaryContainer: _darkPrimaryContainer
        ),
        brightness: Brightness.dark,
        textTheme: const TextTheme(
          headlineLarge: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: _darkTextPrimary,
          ),
          titleLarge: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: _darkTextPrimary,
          ),
          bodyLarge: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.normal,
            color: _darkTextPrimary,
          ),
          bodyMedium: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.normal,
            color: _darkTextSecondary,
          ),
          labelSmall: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.normal,
            color: _darkTextSecondary,
          ),
        ),
      );
}
