import 'package:flutter/material.dart';
import 'Pages/home_page.dart';
import 'Pages/Login_pge.dart';

void main() {
  runApp(App1());
}

class App1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //   home: Homepage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.lightGreen),
      darkTheme: ThemeData(brightness: Brightness.dark),

      routes: {
        "/": (context) =>
            Homepage(), // "/" This is default, line 12 is no longer needed.
        "/login": (context) => LoginPage(),
      },
    );
  }
}
