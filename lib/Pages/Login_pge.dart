import 'package:app1/Utility/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 50.0,
              ),
              Image.asset(
                "assets/images/Login_img.png",
                fit: BoxFit.contain,
                height: 300,
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                "Welcome",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 40.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          labelText: "Username", hintText: "Enter username"),
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: "Password", hintText: "Enter Password"),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    ElevatedButton(
                      child: Text("LOGIN"),
                      style: TextButton.styleFrom(minimumSize: Size(150, 50)),
                      onPressed: () {
                        Navigator.pushNamed(context, MyRoutes.homeroute);
                      },
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
