import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hk/widgets/services_widget.dart';
import 'package:iphone_has_notch/iphone_has_notch.dart';

import '../utils/app_styles.dart';

class ServicesScreen extends StatefulWidget {
  const ServicesScreen({super.key});

  @override
  State<ServicesScreen> createState() => _ServicesScreenState();
}

class _ServicesScreenState extends State<ServicesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Styles.greenColor,
          toolbarHeight: IphoneHasNotch.hasNotch ? -12 : 0,

          // toolbarHeight: Theme.of(context).platform == TargetPlatform.iOS ?  0 : 0,
          elevation: 0,
        ),
        body: Scaffold(
          appBar: AppBar(
            backgroundColor: Styles.bgColor,
            foregroundColor: Colors.black,
            elevation: 0,
            title: const Text('Services'),
          ),
          body: Container(
            color: Styles.bgColor,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                const Image(
                  image: AssetImage('assets/images/doctors.png'),
                  height: 200,
                ),
                const Gap(20),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.wheelchair_pickup,
                        size: 30,
                        color: Styles.greenColor,
                      ),
                      const Gap(10),
                      const Text(
                        'Personal Care & Nursing',
                        style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(31, 112, 112, 112),
                  ),
                  child: Column(
                    children: [
                      ServicesWidget(
                          'https://images.unsplash.com/photo-1666214276372-24e331683e78?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
                          'Skin care nurse'),
                      const Gap(20),
                      ServicesWidget(
                          'https://images.unsplash.com/photo-1666214276372-24e331683e78?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
                          'Patient care nurse'),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
}
