import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/app_styles.dart';

class HealthCard extends StatelessWidget {
  HealthCard(this.imageUrl, this.heading, this.subheading);
  String imageUrl;
  String heading;
  String subheading;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 140,
        width: 150,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(5)),
        padding: EdgeInsets.all(4),
        child: Column(
          children: [
            Container(
              width: 150,
              height: 60,
              child: Image(
                image: NetworkImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
            Gap(10),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                heading,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
            Flexible(
              child: Text(
                subheading,
                style: GoogleFonts.redHatDisplay(
                    fontSize: 12, color: Styles.greyColor),
                textAlign: TextAlign.left,
              ),
            )
          ],
        ),
      ),
    );
  }
}
