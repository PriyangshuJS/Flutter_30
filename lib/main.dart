import 'package:app1/Utility/routes.dart';
import 'package:app1/widgets/themes.dart';
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
      theme: MyThemes.lighttheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeroute,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeroute: (context) => Homepage(),
        MyRoutes.loginroute: (context) => LoginPage(),
      },
    );
  }
}
