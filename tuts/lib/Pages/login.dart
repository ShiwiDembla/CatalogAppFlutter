import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tuts/utils/routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
            child: Column(children: [
          Image.asset(
            "assets/images/login.png",
            fit: BoxFit.cover,
            // height: 500,
          ),
          const SizedBox(
            height: 20,
          ),
          const Text("Welcome",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              )),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
            child: Column(children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Username",
                  hintText: "Enter username",
                ),
              ),
              TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Password",
                    hintText: "Enter password",
                  )),
              SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                  child: Text("Login"),
                  style: TextButton.styleFrom(minimumSize: Size(100, 50)),
                  onPressed: () {
                    print("hello");
                    Navigator.pushNamed(context, MyRoutes.homeRoute);
                  }),
            ]),
          )
        ])));
  }
}
