import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  //final used with lists in which we can add other values.
  //const cant be used with lists
  final int days = 30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //title takes widget, so text is a widget
        title: Text("Catalog App"),
      ),

      body: Center(
        child: Container(
          child: Text("$days days of flutter"),
        ),
      ),
      //menu
      drawer: Drawer(),
    );
  }
}
