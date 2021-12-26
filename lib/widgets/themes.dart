import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) {
    return ThemeData(
        primarySwatch: Colors.indigo,
        fontFamily: GoogleFonts.lato().fontFamily,
        appBarTheme: const AppBarTheme(
            color: Colors.white,
            elevation: 0.00,
            iconTheme: IconThemeData(color: Colors.black),
            titleTextStyle: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20)));
  }

  static ThemeData darkTheme(BuildContext context) => ThemeData(
        brightness: Brightness.light, // properties for dark mode.
        // brightness: Brightness.dark, // it overrides the themeMode.
        primarySwatch: Colors.red,
      );
}
