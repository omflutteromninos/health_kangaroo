import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hk/screens/bottom_nav.dart';
import 'package:hk/screens/home_page.dart';
import 'package:hk/screens/mediciens_screen.dart';
import 'package:hk/screens/settings_screen.dart';
import 'package:hk/utils/app_styles.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.blue, // navigation bar color
    statusBarColor: Styles.greenColor, // status bar color
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Health kangaroo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const SettingScreen());
  }
}
