import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hk/screens/bottom_nav.dart';

import '../utils/image_constants.dart';

class MySplashScreen extends StatefulWidget {
  const MySplashScreen({Key? key}) : super(key: key);

  @override
  State<MySplashScreen> createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  startTimer() {
    Timer(const Duration(seconds: 2), () async {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (c) => const BottomNav()));
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: ColorConstants().primaryColor,
      body: Center(
        child: Image.asset(
          ImageConstants().appLogo,
          height: 100,
        ),
      ),
    );
  }
}
