import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/app_styles.dart';

// ignore: must_be_immutable
class HealthCard extends StatelessWidget {
  HealthCard(this.imageUrl, this.heading, this.subheading, {super.key});
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
        padding: const EdgeInsets.all(4),
        child: Column(
          children: [
            SizedBox(
              width: 150,
              height: 60,
              child: Image(
                image: NetworkImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
            const Gap(10),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                heading,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
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
