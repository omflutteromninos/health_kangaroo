import 'package:flutter/material.dart';

import '../utils/app_styles.dart';
// CODE BY ASHWANI

// ignore: must_be_immutable
class AmbulanceContainer extends StatelessWidget {
  AmbulanceContainer(this.leftImageUrl, this.middleText, this.middleTextColor,
      this.rightImageUrl,
      {super.key});
  String leftImageUrl;
  String middleText;
  Color middleTextColor;
  String rightImageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.10,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50),
          border: Border.all(
              width: 5, color: const Color.fromARGB(34, 182, 173, 173))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image(
            image: AssetImage(
              leftImageUrl,
            ),
            color: Colors.red,
            height: 35,
          ),
          Text(
            middleText,
            style: TextStyle(
                color: middleTextColor,
                fontWeight: FontWeight.w500,
                fontSize: 20),
          ),
          Container(
            padding: const EdgeInsets.all(9),
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                color: Styles.redColor,
                borderRadius: BorderRadius.circular(30)),
            child: Image(
              image: AssetImage(
                rightImageUrl,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
