import 'package:flutter/animation.dart';

import 'package:flutter/material.dart';

Color primary = Colors.green;

class Styles {
  static Color primaryColor = primary;

  static Color greenColor = Color.fromARGB(255, 62, 188, 118);
  static Color textColor = const Color(0xFF3b3b3b);
  static Color bgColor = Color.fromARGB(255, 231, 235, 236);
  static Color yellowColor = const Color.fromARGB(255, 227, 167, 71);
  static Color purpleColor = const Color.fromARGB(255, 147, 132, 237);
  static Color blueColor = const Color.fromARGB(255, 20, 103, 179);
  static Color lightBlueColor = Color.fromARGB(255, 85, 158, 226);
  static Color redColor = Color.fromARGB(255, 179, 31, 20);
  static Color greyColor = Colors.black38;
  static Color kakiColor = const Color(0xFFd2bdb6);
  // static Color greenColor = const Color(0xff32ad6a);
  // static Color greyColor = const Color(0xffe5e9ec);


  static TextStyle smallText= const TextStyle(color: Colors.black,fontSize: 14);
  static TextStyle graySmallText= const TextStyle(color: Colors.grey,fontSize: 12);
  static TextStyle whiteText= const TextStyle(color: Colors.white,fontSize: 14);
  static TextStyle mediumText= const TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w500);
  static TextStyle largeText= const TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.w500);

  static TextStyle textStyle =
      TextStyle(fontSize: 16, color: textColor, fontWeight: FontWeight.w500);
  static TextStyle headLineStyle1 =
      TextStyle(fontSize: 26, color: textColor, fontWeight: FontWeight.w900);
  static TextStyle headLineStyle2 =
      TextStyle(fontSize: 21, color: textColor, fontWeight: FontWeight.bold);
  static TextStyle headLineStyle3 = TextStyle(
      fontSize: 17, color: Colors.grey.shade500, fontWeight: FontWeight.w500);
  static TextStyle headLineStyle4 = TextStyle(
      fontSize: 14, color: Colors.grey.shade500, fontWeight: FontWeight.w500);
}
