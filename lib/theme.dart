import 'package:flutter/material.dart';

class AppTheme {
  static final Color primary = Color(0xFFB76E3B);
  static final Color accent = Color(0xFFF1C6A0);

  static final ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: primary),
    scaffoldBackgroundColor: Colors.white,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primary, // antes era 'primary'
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        padding: EdgeInsets.symmetric(vertical: 14, horizontal: 24),
      ),
    ),
    textTheme: const TextTheme(
      headlineSmall: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold), // antes era 'headline5'
      bodyMedium: TextStyle(fontSize: 14.0), // antes era 'bodyText2'
    ),
    useMaterial3: true, // opcional, mejora el estilo moderno
  );
}
