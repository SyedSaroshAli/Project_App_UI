import 'package:flutter/material.dart';
import 'package:travel_app/homepage.dart';
import 'package:travel_app/signup.dart';
import 'package:travel_app/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Travel Application",
      home: Splash(),
    );
  }
}
