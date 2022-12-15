import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hk/utils/app_styles.dart';

class Buttonls extends StatelessWidget {
  Buttonls({Key? key, required this.data}) : super(key: key);
  String data;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: double.infinity,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: ShapeDecoration(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        color: Styles.greenColor,
      ),
      child: Text(data,
          style: GoogleFonts.montserrat(
            textStyle: const TextStyle(
              color: Color(0xfff5f5f5),
              fontSize: 16,
              fontFamily: "Montserrat",
              fontWeight: FontWeight.w700,
            ),
          )),
    );
  }
}
