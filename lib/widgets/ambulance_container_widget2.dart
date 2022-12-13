import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class AmbulanceContainer2 extends StatelessWidget {
  AmbulanceContainer2(
    this.leftImageUrl,
    this.middleText,
    this.middleTextColor,
  );
  String leftImageUrl;
  String middleText;
  Color middleTextColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.12,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50),
          border:
              Border.all(width: 5, color: Color.fromARGB(34, 182, 173, 173))),
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
          Text('')
        ],
      ),
    );
  }
}
