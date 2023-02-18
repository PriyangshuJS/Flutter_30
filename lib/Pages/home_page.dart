import 'package:flutter/material.dart';

import '../widgets/drawer.dart';

class Homepage extends StatelessWidget {
  var nu = 1;
  String s = "Work in Progress!!.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("APP 1"),
        backgroundColor: Color.fromARGB(255, 31, 88, 173),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 200.0,
              ),
              Text(
                "Under Construction, ${num} $s",
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              Image.asset(
                "assets/images/construction.png",
                fit: BoxFit.contain,
                height: 300,
              ),
              SizedBox(
                height: 50.0,
              ),
              Text(
                "Comming Soon",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
