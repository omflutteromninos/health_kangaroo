import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class LeftHeading extends StatelessWidget {
  LeftHeading(this.heading, {super.key});
  String heading;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        heading,
        style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w500),
      ),
    );
  }
}
