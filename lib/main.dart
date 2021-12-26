import 'package:catelog/pages/login.dart';
import 'package:catelog/pages/home_page.dart';
import 'package:catelog/utils/routes.dart';
import 'package:catelog/widgets/themes.dart';
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
      theme: MyTheme.lightTheme(context),
      themeMode: ThemeMode.light,
      // themeMode: ThemeMode.dark,
      darkTheme: MyTheme.darkTheme(context),
      routes: {
        "/": (context) => HomePage(),
        MyRoute.homeRoute: (context) => HomePage(),
        MyRoute.loginRoute: (context) => LoginPage(),
      },
      debugShowCheckedModeBanner:
          false, // to remove the debug flag on the top right corner
    );
  }
}
