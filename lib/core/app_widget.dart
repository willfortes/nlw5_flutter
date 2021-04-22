import 'package:flutter_application_1/challenge/challenge_page.dart';
import 'package:flutter_application_1/home/home_page.dart';
import 'package:flutter_application_1/splash/splash_page.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "DevQuiz",
      home: HomePage(),
    );
  }
}
