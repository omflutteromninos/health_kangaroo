import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class NursingCardWidget2 extends StatelessWidget {
  NursingCardWidget2(this.imageUrl, this.heading, {super.key});
  String imageUrl;
  String heading;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        width: MediaQuery.of(context).size.width * 0.33,
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.16,
              child: Image(
                image: NetworkImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
            Container(
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.height * 0.05,
              width: 155,
              decoration: BoxDecoration(
                  color: Styles.greenColor,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10))),
              child: Text(
                heading,
                style: const TextStyle(color: Colors.white, fontSize: 10),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
