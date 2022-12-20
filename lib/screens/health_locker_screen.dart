import 'package:flutter/material.dart';

class HealthLockerScreen extends StatefulWidget {
  const HealthLockerScreen({super.key});

  @override
  State<HealthLockerScreen> createState() => _HealthLockerScreenState();
}

class _HealthLockerScreenState extends State<HealthLockerScreen> {
  String abc = '';

  @override
  Widget build(BuildContext context) {
    return Container();
    // return Scaffold(
    //   backgroundColor: Colors.white,
    //   appBar: AppBar(
    //     backgroundColor: Colors.white,
    //     centerTitle: true,
    //     title: const Text(
    //       'Health Locker',
    //       style: TextStyle(color: Colors.black),
    //     ),
    //     elevation: 0,
    //   ),
    //   body: Center(
    //     child: Column(
    //       children: [
    //         const SizedBox(
    //           height: 50,
    //         ),
    //         SizedBox(
    //           height: 40,
    //           width: 300,
    //           child: OTPTextField(
    //             fieldWidth: 40,
    //             fieldStyle: FieldStyle.box,
    //             outlineBorderRadius: 20,
    //             onChanged: (String value) {
    //               setState(() {
    //                 abc = value;
    //               });
    //             },
    //             // onCompleted: (String value) {
    //             //  if(value=='1234'){
    //             //    Navigator.of(context).push(MaterialPageRoute(builder: (context){
    //             //      return AfterLoker();
    //             //    }));
    //             //  }
    //             //
    //             // },
    //           ),
    //         ),
    //         const SizedBox(
    //           height: 50,
    //         ),
    //         Text(
    //           'enter security pin 1234',
    //           style: TextStyle(fontSize: 25, color: Colors.grey.shade300),
    //         ),
    //         const SizedBox(
    //           height: 100,
    //         ),
    //         ElevatedButton(
    //             onPressed: () {
    //               if (abc == '1234') {
    //                 Navigator.of(context)
    //                     .push(MaterialPageRoute(builder: (context) {
    //                   return const AfterLoker();
    //                 }));
    //               }
    //             },
    //             child: const Text('Enter'))
    //       ],
    //     ),
    //   ),
    // );
  }
}
