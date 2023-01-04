import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hk/utils/app_styles.dart';
import 'package:hk/widgets/ambulance_container_widget.dart';
import 'package:iphone_has_notch/iphone_has_notch.dart';

import 'emergency_opt_screen.dart';

class AmbulanceScreen extends StatefulWidget {
  const AmbulanceScreen({super.key});

  @override
  State<AmbulanceScreen> createState() => _AmbulanceScreenState();
}

// CODE BY ASHWANI
class _AmbulanceScreenState extends State<AmbulanceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Styles.greenColor,
          toolbarHeight: IphoneHasNotch.hasNotch ? -12 : 0,

          // toolbarHeight: Theme.of(context).platform == TargetPlatform.iOS ?  0 : 0,
          elevation: 0,
        ),
        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      'https://img.freepik.com/free-vector/green-yellow-abstract-background_53876-99558.jpg?w=996&t=st=1671689652~exp=1671690252~hmac=90f37271321d00302b2cc5ac6eeec1183e09f4b4ea9808550c5e61c1453dba76'),
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
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
                        const Gap(30),
                      ],
                    ),
                  ],
                )),
          ),
        )
    );

  }
}
