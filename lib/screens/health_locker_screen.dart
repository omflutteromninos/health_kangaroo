import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hk/utils/app_styles.dart';

class HealthLockerScreen extends StatefulWidget {
  const HealthLockerScreen({super.key});

  @override
  State<HealthLockerScreen> createState() => _HealthLockerScreenState();
}

class _HealthLockerScreenState extends State<HealthLockerScreen> {
  String abc = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'Health Locker',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Text(
                'Enter Your 4 digits health locker pin',
                style:
                    Styles.headLineStyle2.copyWith(fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(width: 1.5, color: Colors.black38)),
                  ),
                  const Gap(20),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(width: 1.5, color: Colors.black38)),
                  ),
                  const Gap(20),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(width: 1.5, color: Colors.black38)),
                  ),
                  const Gap(20),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(width: 1.5, color: Colors.black38)),
                  ),
                ],
              ),
              // const SizedBox(
              //   height: 40,
              //   width: 200,
              //   child: OTPTextField(
              //     fieldWidth: 40,
              //     fieldStyle: FieldStyle.box,
              //     outlineBorderRadius: 20,
              // onChanged: (String value) {
              //   setState(() {
              //     abc = value;
              //   });
              // },
              // onCompleted: (String value) {
              //   if (value == '1234') {
              //     Navigator.of(context)
              //         .push(MaterialPageRoute(builder: (context) {
              //       return const AfterLoker();
              //     }));
              //   }
              // },
              //   ),
              // ),

              const SizedBox(
                height: 50,
              ),
              InkWell(
                onTap: () {
                  // if (abc == '9797') {
                  //   Navigator.of(context)
                  //       .push(MaterialPageRoute(builder: (context) {
                  //     return const AfterLoker();
                  //   }));
                  // }
                },
                child: Container(
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Styles.primaryColor,
                      borderRadius: BorderRadius.circular(25)),
                  child: Center(
                    child: Text(
                      'ENTER',
                      style: Styles.whiteText,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
