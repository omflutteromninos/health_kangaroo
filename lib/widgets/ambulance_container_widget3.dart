import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AmbulanceContainer3 extends StatelessWidget {
  AmbulanceContainer3(this.middleText, this.middleTextColor, {super.key});
  String middleText;
  Color middleTextColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.085,
      width: MediaQuery.of(context).size.width * 0.85,
      decoration: BoxDecoration(
        boxShadow: const [BoxShadow(blurRadius: 10, color: Colors.black26)],
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Align(
        alignment: Alignment.center,
        child: Text(
          middleText,
          style: TextStyle(
              color: middleTextColor,
              fontWeight: FontWeight.w500,
              fontSize: 18),
        ),
      ),
    );
  }
}
