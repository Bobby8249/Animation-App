import 'package:Animation_APP/Home.dart';
import 'package:Animation_APP/mentor.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: "mentor",
      routes: {
        "home": (context) => Home(),
        "mentor": (context) => Mentor(),
      },
      debugShowCheckedModeBanner: false,
    ),
  );
}
