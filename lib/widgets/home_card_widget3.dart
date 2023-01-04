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
          width: MediaQuery.of(context).size.width * 0.46,
          padding: const EdgeInsets.only(top: 10,bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: iconBgColor,
                    borderRadius: BorderRadius.circular(8)),
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Image(
                    image: AssetImage(
                      iconImage,
                    ),
                    height: MediaQuery.of(context).size.height * 0.04,
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width*0.26,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          heading,
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600, fontSize: 13),
                          overflow: TextOverflow.ellipsis,
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
                  ),
                  const Gap(6),
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: textBgColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.only(right: 5,left: 5,top: 2,bottom: 2),
                      child: Text(
                        bottomText,
                        style: GoogleFonts.poppins(
                            fontSize: 11, color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),

            ],
          )),
    );
  }
}
