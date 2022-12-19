import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TextFieldWidget extends StatelessWidget {
  TextFieldWidget(this.titleText, this.inputText, {super.key});
  String titleText;
  String inputText;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          titleText,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
        ),
        const Gap(10),
        Material(
          shadowColor: Colors.black54,
          color: const Color.fromARGB(8, 0, 0, 0),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          elevation: 5,
          child: TextField(
            decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 25, vertical: 18),
              floatingLabelBehavior: FloatingLabelBehavior.never,
              label: Text(
                inputText,
                style: const TextStyle(color: Colors.black),
              ),
              fillColor: Colors.white,
              filled: true,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
