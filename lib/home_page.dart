import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  var nu = 1;
  String s = "Learning from Codepur.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("APP 1"),
      ),
      body: Center(
        child: Text("Welcome to the APP ${num} $s"),
      ),
      drawer: Drawer(),
    );
  }
}
