import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class HomeCard3 extends StatelessWidget {
  HomeCard3(this.iconImage, this.iconBgColor, this.errowBgColor, this.heading,
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
          decoration: BoxDecoration(
              border: Border.all(
                  width: 3, color: const Color.fromARGB(123, 201, 201, 201)),
              borderRadius: BorderRadius.circular(12)),
          width: MediaQuery.of(context).size.width * 0.436,
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(9),
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        color: iconBgColor,
                        borderRadius: BorderRadius.circular(5)),
                    child: Image(
                      image: AssetImage(
                        iconImage,
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            heading,
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400, fontSize: 12),
                            overflow: TextOverflow.ellipsis,
                          )),
                      const Gap(6),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 3, vertical: 2),
                          alignment: Alignment.center,

                          // width: 75,
                          decoration: BoxDecoration(
                              color: textBgColor,
                              borderRadius: BorderRadius.circular(10)),
                          child: Text(
                            bottomText,
                            style: GoogleFonts.poppins(
                                fontSize: 8, color: Colors.white),
                          ),
                        ),
                      )
                    ],
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
            ],
          )),
    );
  }
}
