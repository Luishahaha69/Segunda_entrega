
import 'package:flutter/material.dart';

class AppTheme {
  static final Color primary = Color(0xFFB76E3B);
  static final Color accent = Color(0xFFF1C6A0);
  static final ThemeData lightTheme = ThemeData(
    primaryColor: primary,
    scaffoldBackgroundColor: Colors.white,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: primary,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        padding: EdgeInsets.symmetric(vertical: 14, horizontal: 24),
      ),
    ),
    textTheme: TextTheme(
      headline5: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
      bodyText2: TextStyle(fontSize: 14.0),
    ),
  );
}
