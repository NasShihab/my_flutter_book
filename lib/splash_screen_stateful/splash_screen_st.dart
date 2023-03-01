import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreenSt extends StatefulWidget {
  const SplashScreenSt({Key? key}) : super(key: key);

  @override
  State<SplashScreenSt> createState() => _SplashScreenStState();
}

class _SplashScreenStState extends State<SplashScreenSt> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/');
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Image(
          image: AssetImage('assets/icons/loading.gif'),
        ),
      ),
    );
  }
}
