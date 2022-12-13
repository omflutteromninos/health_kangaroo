import 'package:flutter/material.dart';
import 'package:hk/screens/Login_screen.dart';
import 'package:hk/screens/bottom_nav.dart';
import 'package:hk/screens/home_page.dart';
import 'package:hk/screens/mediciens_screen.dart';
import 'package:hk/screens/nursing_services_screen.dart';
import 'package:hk/screens/settings_screen.dart';
import 'package:hk/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
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
        home: const LoginScreen());
  }
}
