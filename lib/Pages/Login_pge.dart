import 'package:app1/Utility/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  String name = "";
  bool clicklogin = false;
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
                "Welcome $name",
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
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: "Password", hintText: "Enter Password"),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    InkWell(
                      onTap: () async {
                        setState(() {
                          clicklogin = true;
                        });
                        await Future.delayed(Duration(seconds: 1));
                        Navigator.pushNamed(context, MyRoutes.homeroute);
                      },
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        height: 50,
                        width: clicklogin ? 50 : 150,
                        alignment: Alignment.center,
                        child: clicklogin
                            ? Icon(
                                Icons.done,
                                color: Colors.white,
                              )
                            : Text(
                                "Login",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                        decoration: BoxDecoration(
                            color: clicklogin ? Colors.green : Colors.blue,
                            borderRadius:
                                BorderRadius.circular(clicklogin ? 50 : 8)),
                      ),
                    )
                    /*ElevatedButton(
                      child: Text("LOGIN"),
                      style: TextButton.styleFrom(minimumSize: Size(150, 50)),
                      onPressed: () {
                        Navigator.pushNamed(context, MyRoutes.homeroute);
                      },
                    )*/
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
