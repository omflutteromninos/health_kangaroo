import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hk/widgets/ambulance_container_widget3.dart';

import '../utils/app_styles.dart';
import '../widgets/ambulance_container_widget2.dart';

class MyOrderScreen extends StatefulWidget {
  const MyOrderScreen({super.key});

  @override
  State<MyOrderScreen> createState() => _MyOrderScreenState();
}

class _MyOrderScreenState extends State<MyOrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            padding: const EdgeInsets.all(13),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://images.unsplash.com/photo-1487147264018-f937fba0c817?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80'),
                    fit: BoxFit.cover,
                    opacity: 0.5)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Gap(30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(
                            Icons.arrow_back,
                            size: 30,
                          ),
                        ),
                        const Text(
                          'My Order Status',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 20),
                        ),
                        const Text('  ')
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    InkWell(
                      onTap: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //       builder: (context) => const EmergencyOptScreen(),
                        //     ));
                      },
                      child: AmbulanceContainer3(
                        'Medical Orders',
                        Styles.greenColor,
                      ),
                    ),
                    const Gap(20),
                    InkWell(
                      onTap: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //       builder: (context) => const EmergencyOptScreen(),
                        //     ));
                      },
                      child: AmbulanceContainer3(
                        'Lab-Tests Orders',
                        Styles.greenColor,
                      ),
                    ),
                    const Gap(20),
                    InkWell(
                      onTap: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //       builder: (context) => const EmergencyOptScreen(),
                        //     ));
                      },
                      child: AmbulanceContainer3(
                        'Nursing Appointments',
                        Styles.greenColor,
                      ),
                    ),
                    const Gap(20),
                    InkWell(
                      onTap: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //       builder: (context) => const EmergencyOptScreen(),
                        //     ));
                      },
                      child: AmbulanceContainer3(
                        'Doctor Appointments',
                        Styles.greenColor,
                      ),
                    ),
                    const Gap(20),
                    InkWell(
                      onTap: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //       builder: (context) => const EmergencyOptScreen(),
                        //     ));
                      },
                      child: AmbulanceContainer3(
                        'Ambulance Booking',
                        Styles.greenColor,
                      ),
                    ),
                  ],
                ),
                const Gap(40)
              ],
            )),
      ),
    );
  }
}