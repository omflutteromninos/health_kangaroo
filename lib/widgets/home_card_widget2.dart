import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/app_styles.dart';

class HomeCard2 extends StatelessWidget {
  HomeCard2(this.iconImage, this.iconBgColor, this.errowBgColor, this.heading,
      this.bottomText, this.textBgColor);
  String iconImage;
  Color iconBgColor;
  Color errowBgColor;
  String heading;
  String bottomText;
  Color textBgColor;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        //set border radius more than 50% of height and width to make circle
      ),
      child: Container(
          width: MediaQuery.of(context).size.width * 0.436,
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        color: iconBgColor,
                        borderRadius: BorderRadius.circular(5)),
                    child: Image(
                      image: AssetImage(
                        iconImage,
                      ),
                      height: 40,
                    ),
                  ),
                  Container(
                      alignment: Alignment.center,
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                          color: iconBgColor,
                          borderRadius: BorderRadius.circular(20)),
                      child: Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Colors.white,
                        size: 14,
                      ))
                ],
              ),
              Gap(8),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(heading,
                      style: GoogleFonts.poppins(fontWeight: FontWeight.w500))),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  bottomText,
                  style: GoogleFonts.poppins(
                      fontSize: 10, color: Styles.greenColor),
                ),
              )
            ],
          )),
    );
  }
}
