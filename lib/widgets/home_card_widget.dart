import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeCard extends StatelessWidget {
  HomeCard(this.iconImage, this.iconBgColor, this.errowBgColor, this.heading,
      this.bottomText, this.textBgColor,
      {super.key});
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
          padding: const EdgeInsets.all(10),
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
                      child: const Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Colors.white,
                        size: 14,
                      ))
                ],
              ),
              const Gap(8),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(heading,
                      style: GoogleFonts.poppins(fontWeight: FontWeight.w500))),
              const Gap(7),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  alignment: Alignment.center,
                  height: 15,
                  width: 90,
                  decoration: BoxDecoration(
                      color: textBgColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    bottomText,
                    style:
                        GoogleFonts.poppins(fontSize: 9, color: Colors.white),
                  ),
                ),
              )
            ],
          )),
    );
  }
}
