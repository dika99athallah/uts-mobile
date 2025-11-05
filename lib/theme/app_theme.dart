import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryColor = Color(0xFF6A1B9A); // ungu Inaklug
  static const Color secondaryColor = Color(0xFFF3E5F5); // ungu muda
  static const Color accentColor = Color(0xFFBA68C8);

  static ThemeData lightTheme = ThemeData(
    primaryColor: primaryColor,
    scaffoldBackgroundColor: Colors.white,
    colorScheme: ColorScheme.fromSwatch().copyWith(
      secondary: accentColor,
      primary: primaryColor,
    ),
    textTheme: const TextTheme(
      headlineMedium: TextStyle(
        color: primaryColor,
        fontWeight: FontWeight.bold,
      ),
      bodyMedium: TextStyle(
        color: Colors.black87,
        fontSize: 25,
      ),
    ),
  );
}
