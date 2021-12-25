import 'package:catelog/login.dart';
import 'package:catelog/pages/home_page.dart';
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Fultter First APP",
      // home: HomePage(), // either use this or use the routes below
      theme: ThemeData(
          primarySwatch: Colors.pink,
          fontFamily: GoogleFonts.lato().fontFamily,
          primaryTextTheme: GoogleFonts.latoTextTheme()),
      themeMode: ThemeMode.light,
      // themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        brightness: Brightness.light, // properties for dark mode.
        // brightness: Brightness.dark, // it overrides the themeMode.
        primarySwatch: Colors.red,
      ),
      routes: {
        "/": (context) => LoginPage(),
        "/home": (context) => HomePage(),
        "/login": (context) => LoginPage(),
      },
    );
  }
}
