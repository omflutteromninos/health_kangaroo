import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hk/utils/app_styles.dart';
import 'package:hk/widgets/ambulance_container_widget.dart';

import 'emergency_opt_screen.dart';

class AmbulanceScreen extends StatefulWidget {
  const AmbulanceScreen({super.key});

  @override
  State<AmbulanceScreen> createState() => _AmbulanceScreenState();
}

class _AmbulanceScreenState extends State<AmbulanceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: EdgeInsets.all(15),
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
                  const Gap(30),
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
                        'Ambulance',
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const EmergencyOptScreen(),
                          ));
                    },
                    child: AmbulanceContainer(
                        'assets/icons/44.png',
                        'Emergency',
                        Styles.redColor,
                        'assets/icons/ambulance.png'),
                  ),
                  const Gap(20),
                  AmbulanceContainer('assets/icons/0.png', 'Refferal',
                      Styles.greenColor, 'assets/icons/ambulance.png'),
                ],
              ),
              const Gap(40)
            ],
          )),
    );
  }
}
