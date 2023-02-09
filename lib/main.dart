import 'package:flutter/material.dart';

void main() {
  runApp(App1());
}

class App1 extends StatelessWidget {
  const App1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        child: Center(
          child: Container(
            child: Text("Welcome to the APP ONE!!"),
          ),
        ),
      ),
    );
  }
}
