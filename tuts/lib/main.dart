import 'package:flutter/material.dart';
import 'package:tuts/Pages/home_page.dart';
import 'package:tuts/Pages/login.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //context helps in tracking of positions of widgets in trees.
    //build is a method in stateless class, which is in material lib
    //override existing build method and add your widgets

    return MaterialApp(
      // home: homePage(),
      //choose mode here, light or dark
      themeMode: ThemeMode.light,
      //for light, use any swatch
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
        // primaryTextTheme: GoogleFonts.latoTextTheme()
      ),
      //for dark, also choose any color, but when brightness feature used
      //it overrides all the properties
      darkTheme:
          ThemeData(brightness: Brightness.dark, primarySwatch: Colors.red),

      //default
      // initialRoute: "/home",
      //map like json, key-value pairs, lke dictionary
      routes: {
        // key:pair => object
        //default
        "/": (context) => LoginPage(),
        "/home": (context) => HomePage(),
        "/login": (context) => LoginPage(),
      },
    );
  }
}
