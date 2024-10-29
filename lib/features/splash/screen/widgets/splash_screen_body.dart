import 'dart:async';

import 'package:flutter/material.dart';

import '../../../../core/routes/routes.dart';

class SplashScreenBody extends StatefulWidget {
  const SplashScreenBody({super.key});

  @override
  State<SplashScreenBody> createState() => _SplashScreenBodyState();
}

class _SplashScreenBodyState extends State<SplashScreenBody> {
  _startDelay() {
    Timer(
        const Duration(seconds: 2),
        _goNext
    );
  }

  _goNext() {
    Navigator.of(context).pushReplacementNamed(Routes.welcomeScreen);
  }

  @override
  void initState() {
    super.initState();
    _startDelay();
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Center(
          child: Image.asset(
            'assets/images/splash_screen_image.png',
            fit: BoxFit.cover,
          ),
        )
    );
  }
}
