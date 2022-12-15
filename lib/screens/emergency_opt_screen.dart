import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hk/widgets/ambulance_container_widget2.dart';

import '../utils/app_styles.dart';

class EmergencyOptScreen extends StatefulWidget {
  const EmergencyOptScreen({super.key});

  @override
  State<EmergencyOptScreen> createState() => _EmergencyOptScreenState();
}

// CODE BY ASHWANI
class _EmergencyOptScreenState extends State<EmergencyOptScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  'https://images.unsplash.com/photo-1487147264018-f937fba0c817?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80'),
              fit: BoxFit.cover,
              opacity: 1)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          foregroundColor: Colors.black,
          backgroundColor: Colors.transparent,
          title: const Text('Ambulance'),
        ),
        body: Container(
            padding: const EdgeInsets.all(15),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
                      child: AmbulanceContainer2(
                        'assets/icons/44.png',
                        'Accidental Emergency',
                        Styles.redColor,
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
                      child: AmbulanceContainer2(
                        'assets/icons/0.png',
                        'Medical Emergency',
                        Styles.redColor,
                      ),
                    ),
                    const Gap(30),
                  ],
                ),
              ],
            )),
      ),
    );
  }
}
