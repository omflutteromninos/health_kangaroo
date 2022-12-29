import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/app_styles.dart';

class TrackerCard extends StatelessWidget {
  TrackerCard(this.topText, this.middleIcon, this.bottomText, {super.key});
  String topText;
  String middleIcon;
  String bottomText;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            border: Border.all(width: 1, color: Styles.greenColor),
            borderRadius: BorderRadius.circular(10),
          ),
          width: MediaQuery.of(context).size.width * 0.43,
          height: 130,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    topText,
                    style: GoogleFonts.poppins(
                        color: Styles.greyColor, fontSize: 13),
                  ),
                  const Image(
                    image: AssetImage(
                      'assets/icons/13.png',
                    ),
                    height: 25,
                  )
                ],
              ),
              Image(
                image: AssetImage(middleIcon),
                height: 40,
              ),
              Text(
                bottomText,
                style:
                    GoogleFonts.poppins(color: Styles.greyColor, fontSize: 10),
                textAlign: TextAlign.center,
              ),
            ],
          )),
    );
  }
}
