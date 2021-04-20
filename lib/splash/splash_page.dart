import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/app_gradients.dart';
import 'package:flutter_application_1/core/app_images.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: AppGradients.linear
        ),
        child: Center(
          child: Image.asset(AppImages.logo)
        )
      )
    );
  }
}