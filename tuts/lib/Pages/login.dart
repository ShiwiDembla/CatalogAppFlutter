import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tuts/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = " ";
  bool changeButton = false;

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
          SizedBox(
            height: 20,
          ),
          Text("Welcome $name",
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
                onChanged: (value) {
                  name = value;
                  setState(() {});
                },
              ),
              TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Password",
                    hintText: "Enter password",
                  )),
              SizedBox(
                height: 40.0,
              ),

              InkWell(
                splashColor: Colors.deepOrangeAccent,
                onTap: () async {
                  // Navigator.pushNamed(context, MyRoutes.homeRoute);
                  setState(() {
                    changeButton = true;
                  });
                  await Future.delayed(Duration(seconds: 1));
                  Navigator.pushNamed(context, MyRoutes.homeRoute);
                },
                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  height: 40,
                  width: changeButton ? 50 : 150,
                  alignment: Alignment.center,
                  child: changeButton
                      ? Icon(
                          Icons.done,
                          color: Colors.white,
                        )
                      : Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,

                    shape: changeButton ? BoxShape.circle : BoxShape.rectangle,
                    // borderRadius:
                    //     BorderRadius.circular(changeButton ? 20.0 : 10.0),
                  ),
                ),
              ),

              // ElevatedButton(
              //     child: Text("Login"),
              //     style: TextButton.styleFrom(minimumSize: Size(100, 50)),
              //     onPressed: () {
              //       print("hello");
              //       Navigator.pushNamed(context, MyRoutes.homeRoute);
              //     }),
            ]),
          )
        ])));
  }
}
