import 'package:app1/Utility/routes.dart';
import 'package:flutter/material.dart';
import 'Pages/home_page.dart';
import 'Pages/Login_pge.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(App1());
}

class App1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //   home: Homepage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      darkTheme: ThemeData(brightness: Brightness.dark),

      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeroute: (context) => Homepage(),
        MyRoutes.loginroute: (context) => LoginPage(),
      },
    );
  }
}
