import 'package:flutter/material.dart';
import 'package:hk/screens/after_locker_screen.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

class HealthLockerScreen extends StatefulWidget {
  const HealthLockerScreen({super.key});

  @override
  State<HealthLockerScreen> createState() => _HealthLockerScreenState();
}

class _HealthLockerScreenState extends State<HealthLockerScreen> {
  String abc='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('Health Locker',style: TextStyle(color: Colors.black),),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 50,),
            Container(
              height: 40,
              width: 300,
              child: OTPTextField(
                fieldWidth: 40,
                 fieldStyle: FieldStyle.box,
                outlineBorderRadius: 20,
                onChanged: (String value){
                  setState(() {
                    abc=value;
                  });

                },
                // onCompleted: (String value) {
                //  if(value=='1234'){
                //    Navigator.of(context).push(MaterialPageRoute(builder: (context){
                //      return AfterLoker();
                //    }));
                //  }
                //
                // },

              ),
            ),
            SizedBox(height: 50,),
            Text('enter security pin 1234',style: TextStyle(fontSize: 25,color: Colors.grey.shade300),),
            SizedBox(height: 100,),
            ElevatedButton(
                onPressed: (){
             if(abc=='1234'){
                 Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return AfterLoker();
                   }));
                  }
                }, child: Text('Enter'))
          ],
        ),
      ),
    );
  }
}
