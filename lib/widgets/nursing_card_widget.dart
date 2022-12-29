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
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.45,
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Styles.greenColor),
                        borderRadius: BorderRadius.circular(40)),
                    child: CircleAvatar(
                      radius: 25,
                      foregroundImage: NetworkImage(imageUrl),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(blurRadius: 5, color: Colors.black26)
                        ],
                        borderRadius: BorderRadius.circular(20)),
                    child: Icon(
                      Icons.keyboard_arrow_right,
                      color: Styles.greenColor,
                    ),
                  )
                ],
              ),
            ),
            const Gap(6),
            Text(
              heading,
              style: const TextStyle(fontWeight: FontWeight.w500),
            ),
            const Gap(6),
            Text(
              subheading,
              style: TextStyle(
                  overflow: TextOverflow.ellipsis,
                  color: Styles.greenColor,
                  fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
