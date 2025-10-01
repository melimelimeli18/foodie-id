import 'package:flutter/material.dart';

class AppTheme {
  // Primary colors based on the design
  static const Color primaryOrange = Color(0xFFFF6B35);
  static const Color secondaryOrange = Color(0xFFFF8A65);
  static const Color lightOrange = Color(0xFFFFAB91);
  static const Color primaryText = Color(0xFF222222);
  static const Color backgroundColor = Colors.white;

  // Text styles based on the design
  static const TextStyle headlineStyle = TextStyle(
    fontFamily: 'Plus Jakarta Sans',
    fontSize: 28,
    fontWeight: FontWeight.w700,
    color: primaryText,
  );

  static const TextStyle subheadlineStyle = TextStyle(
    fontFamily: 'Plus Jakarta Sans',
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: primaryText,
  );

  static const TextStyle bodyStyle = TextStyle(
    fontFamily: 'Plus Jakarta Sans',
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: primaryText,
  );

  static const TextStyle buttonStyle = TextStyle(
    fontFamily: 'Plus Jakarta Sans',
    fontSize: 22,
    fontWeight: FontWeight.w800,
    color: primaryText,
  );

  // Theme data
  static ThemeData get lightTheme {
    return ThemeData(
      primarySwatch: MaterialColor(
        0xFFFF6B35,
        <int, Color>{
          50: const Color(0xFFFFF3E0),
          100: const Color(0xFFFFE0B2),
          200: const Color(0xFFFFCC80),
          300: const Color(0xFFFFB74D),
          400: const Color(0xFFFFA726),
          500: primaryOrange,
          600: const Color(0xFFFF8F00),
          700: const Color(0xFFFF8F00),
          800: const Color(0xFFFF8F00),
          900: const Color(0xFFE65100),
        },
      ),
      scaffoldBackgroundColor: backgroundColor,
      appBarTheme: const AppBarTheme(
        backgroundColor: backgroundColor,
        elevation: 0,
        iconTheme: IconThemeData(color: primaryOrange),
        titleTextStyle: headlineStyle,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryOrange,
          foregroundColor: primaryText,
          textStyle: buttonStyle,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
      textTheme: const TextTheme(
        displayLarge: headlineStyle,
        headlineMedium: subheadlineStyle,
        bodyLarge: bodyStyle,
        bodyMedium: bodyStyle,
      ),
    );
  }
}
