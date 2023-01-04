import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hk/screens/BeforeTabbarScreen.dart';
import 'package:hk/screens/bottom_nav.dart';
import 'package:iphone_has_notch/iphone_has_notch.dart';

import '../utils/app_styles.dart';
import '../utils/image_constants.dart';

class MySplashScreen extends StatefulWidget {
  const MySplashScreen({Key? key}) : super(key: key);

  @override
  State<MySplashScreen> createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  startTimer() {
    Timer(const Duration(seconds: 2), () async {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (c) => BeforeTabBarScreen(

              )));
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
        appBar: AppBar(
          backgroundColor: Styles.greenColor,
          toolbarHeight: IphoneHasNotch.hasNotch ? -12 : 0,

          // toolbarHeight: Theme.of(context).platform == TargetPlatform.iOS ?  0 : 0,
          elevation: 0,
        ),
        body: Scaffold(
          //backgroundColor: ColorConstants().primaryColor,
          body: Center(
            child: Image.asset(
              ImageConstants().appLogo,
              height: 100,
            ),
          ),
        )
    );
  }
}
