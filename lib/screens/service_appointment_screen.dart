import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:iphone_has_notch/iphone_has_notch.dart';

import '../utils/app_styles.dart';
import '../widgets/left_heading_widget.dart';

class ServiceAppointment extends StatefulWidget {
  const ServiceAppointment({super.key});

  @override
  State<ServiceAppointment> createState() => _ServiceAppointmentState();
}

class _ServiceAppointmentState extends State<ServiceAppointment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Styles.greenColor,
          toolbarHeight: IphoneHasNotch.hasNotch ? -12 : 0,

          // toolbarHeight: Theme.of(context).platform == TargetPlatform.iOS ?  0 : 0,
          elevation: 0,
        ),
        body:Scaffold(
          appBar: AppBar(
            backgroundColor: Styles.bgColor,
            foregroundColor: Colors.black,
            elevation: 0,
            title: const Text('Service Appointment'),
          ),
          body: SingleChildScrollView(
            child: SafeArea(
              child: Container(
                  color: Styles.bgColor,
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 150,
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: NetworkImage(
                                    'https://images.unsplash.com/photo-1611689102192-1f6e0e52df0a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1233&q=80'),
                                fit: BoxFit.cover),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      const Gap(30),
                      LeftHeading('   Upload Prescription'),
                      const Gap(20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Container(
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(
                                      color: const Color.fromARGB(30, 96, 125, 139),
                                      borderRadius: BorderRadius.circular(15),
                                      border: Border.all(
                                          width: 2, color: Styles.greenColor)),
                                  child: const Icon(
                                    Icons.camera_alt,
                                    size: 40,
                                  )),
                              const Gap(8),
                              const Text('Take Photo')
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(
                                      color: const Color.fromARGB(30, 96, 125, 139),
                                      borderRadius: BorderRadius.circular(15),
                                      border: Border.all(
                                          width: 2, color: Styles.greenColor)),
                                  child: const Icon(
                                    Icons.photo,
                                    size: 40,
                                  )),
                              const Gap(8),
                              const Text('Gallery')
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(
                                      color: const Color.fromARGB(30, 96, 125, 139),
                                      borderRadius: BorderRadius.circular(15),
                                      border: Border.all(
                                          width: 2, color: Styles.greenColor)),
                                  child: const Icon(
                                    Icons.health_and_safety,
                                    size: 40,
                                  )),
                              const Gap(8),
                              const Text('Health Locker')
                            ],
                          ),
                        ],
                      ),
                      Gap(MediaQuery.of(context).size.height * 0.04),
                      Text(
                        'View Valid Prescription',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Styles.greenColor,
                            fontSize: 20),
                      ),
                      Gap(MediaQuery.of(context).size.height * 0.04),
                      Card(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: Container(
                            padding: const EdgeInsets.all(15),
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height * 0.23,
                            child: Column(
                              children: [
                                Text(
                                  'Easy process to Service Appointment',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Styles.greyColor,
                                      fontSize: 16),
                                ),
                                const Gap(20),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      alignment: Alignment.center,
                                      width: 70,
                                      child: Column(
                                        // crossAxisAlignment: CrossAxisAlignment.stretch,
                                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Container(
                                            width: 200,
                                            alignment: Alignment.center,
                                            child: CircleAvatar(
                                              radius: 18,
                                              foregroundColor: Styles.greenColor,
                                              backgroundColor: Styles.greenColor,
                                              child: const Text(
                                                '1',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20),
                                              ),
                                            ),
                                          ),
                                          const Gap(4),
                                          const Text(
                                            'Upload Valid Prescription',
                                            style: TextStyle(
                                                color: Colors.black54,
                                                fontWeight: FontWeight.normal,
                                                fontSize: 10),
                                            textAlign: TextAlign.center,
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      width: 70,
                                      child: Column(
                                        // crossAxisAlignment: CrossAxisAlignment.stretch,
                                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Container(
                                            width: 200,
                                            alignment: Alignment.center,
                                            child: CircleAvatar(
                                              radius: 18,
                                              foregroundColor: Styles.greenColor,
                                              backgroundColor: Styles.greenColor,
                                              child: const Text(
                                                '2',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20),
                                              ),
                                            ),
                                          ),
                                          const Gap(4),
                                          const Text(
                                            'Select Test or Package',
                                            style: TextStyle(
                                                color: Colors.black54,
                                                fontWeight: FontWeight.normal,
                                                fontSize: 10),
                                            textAlign: TextAlign.center,
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      width: 70,
                                      child: Column(
                                        // crossAxisAlignment: CrossAxisAlignment.stretch,
                                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Container(
                                            width: 200,
                                            alignment: Alignment.center,
                                            child: CircleAvatar(
                                              radius: 18,
                                              foregroundColor: Styles.greenColor,
                                              backgroundColor: Styles.greenColor,
                                              child: const Text(
                                                '3',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20),
                                              ),
                                            ),
                                          ),
                                          const Gap(4),
                                          const Text(
                                            'Select yout Lab',
                                            style: TextStyle(
                                                color: Colors.black54,
                                                fontWeight: FontWeight.normal,
                                                fontSize: 10),
                                            textAlign: TextAlign.center,
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      width: 70,
                                      child: Column(
                                        // crossAxisAlignment: CrossAxisAlignment.stretch,
                                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Container(
                                            width: 200,
                                            alignment: Alignment.center,
                                            child: CircleAvatar(
                                              radius: 18,
                                              foregroundColor: Styles.greenColor,
                                              backgroundColor: Styles.greenColor,
                                              child: const Text(
                                                '4',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20),
                                              ),
                                            ),
                                          ),
                                          const Gap(4),
                                          const Text(
                                            'Doorstep Sample Collection',
                                            style: TextStyle(
                                                color: Colors.black54,
                                                fontWeight: FontWeight.normal,
                                                fontSize: 10),
                                            textAlign: TextAlign.center,
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            )),
                      )
                    ],
                  )),
            ),
          ),
        )
    );
  }
}
