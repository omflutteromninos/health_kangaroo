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
          width: MediaQuery.of(context).size.width * 0.46,
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    // width: MediaQuery.of(context).size.width * 0.12,
                    // height: MediaQuery.of(context).size.height * 0.06,
                    decoration: BoxDecoration(
                        color: iconBgColor,
                        borderRadius: BorderRadius.circular(8)),
                    child: Image(
                      image: AssetImage(
                        iconImage,
                      ),
                      height: MediaQuery.of(context).size.height * 0.06,
                    ),
                  ),
                  Container(
                      decoration: BoxDecoration(
                          color: iconBgColor,
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: const Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.white,
                          size: 14,
                        ),
                      ))
                ],
              ),
              const Gap(4),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(heading,
                      style: GoogleFonts.poppins(fontWeight: FontWeight.w600))),
              const Gap(4),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  decoration: BoxDecoration(
                      color: textBgColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 4,right: 4,top: 2,bottom: 2),
                    child: Text(
                      bottomText,
                      style:
                          GoogleFonts.poppins(fontSize: 10, color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          )),
    );
  }
}
