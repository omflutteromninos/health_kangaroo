import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_styles.dart';

class NursingCardWidget extends StatelessWidget {
  NursingCardWidget(this.imageUrl, this.heading, this.subheading, {super.key});
  String imageUrl;
  String heading;
  String subheading;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.45,
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Styles.greenColor),
                      borderRadius: BorderRadius.circular(40)),
                  child: CircleAvatar(
                    radius: 27,
                    foregroundImage: NetworkImage(imageUrl),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                            blurRadius: 6,
                            color: Colors.black26,
                            offset: Offset(1.0, 5.0))
                      ],
                      borderRadius: BorderRadius.circular(20)),
                  child: Icon(
                    Icons.keyboard_arrow_right,
                    color: Styles.greenColor,
                  ),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  heading,
                  style: const TextStyle(fontWeight: FontWeight.w500),
                ),
                const Gap(10),
                Text(
                  subheading,
                  style: TextStyle(
                      overflow: TextOverflow.ellipsis,
                      color: Styles.greenColor,
                      fontSize: 12),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
