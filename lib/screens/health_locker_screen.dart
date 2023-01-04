import 'package:flutter/material.dart';
import 'package:hk/utils/app_styles.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

import 'after_locker_screen.dart';

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
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Row(
              children: [
                SizedBox(width: 10,),
                Text('Enter Your 4 digits health locker pin',style: Styles.mediumText,),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 40,
              width: 200,
              child: OTPTextField(
                fieldWidth: 40,
                fieldStyle: FieldStyle.box,
                outlineBorderRadius: 20,
                onChanged: (String value) {
                  setState(() {
                    abc = value;
                  });
                },
                onCompleted: (String value) {
                 if(value=='1234'){
                   Navigator.of(context).push(MaterialPageRoute(builder: (context){
                     return AfterLoker();
                   }));
                 }

                },
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            InkWell(
              onTap: (){
                if (abc == '1234') {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const AfterLoker();
                  }));
                }
              },
              child: Container(
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                    color: Styles.primaryColor,
                  borderRadius: BorderRadius.circular(25)
                ),
                child: Center(
                  child: Text('ENTER',style: Styles.whiteText,),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
