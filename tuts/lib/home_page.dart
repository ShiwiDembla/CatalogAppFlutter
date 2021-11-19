import 'package:flutter/material.dart';

class home_page extends StatelessWidget {
  const home_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final used with lists in which we can add other values.
    //const cant be used with lists

    final int days = 30;
    return Material(
      child: Center(
        child: Text("$days days of flutter"),
      ),
    );
  }
}
