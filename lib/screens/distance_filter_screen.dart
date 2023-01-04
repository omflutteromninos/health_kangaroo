import 'package:custom_slider/custom_slider.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hk/screens/home_page.dart';
import 'package:hk/utils/app_styles.dart';
import 'package:iphone_has_notch/iphone_has_notch.dart';

import '../widgets/hospital_card_widget.dart';

class DistanceFilterScreen extends StatefulWidget {
  const DistanceFilterScreen({super.key});

  @override
  State<DistanceFilterScreen> createState() => _DistanceFilterScreenState();
}

double _currentSliderValue = 20;

class _DistanceFilterScreenState extends State<DistanceFilterScreen> {
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
            leading: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ));
                },
                child: Icon(Icons.adaptive.arrow_back)),
            centerTitle: true,
            elevation: 1,
            foregroundColor: Colors.black,
            backgroundColor: Colors.white,
            title: const Text('Hospitals'),
          ),
          body: Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    height: 50,
                    decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                              color: Color.fromARGB(61, 0, 0, 0), blurRadius: 6)
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)),
                    child: const TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search_rounded),
                            border:
                            OutlineInputBorder(borderSide: BorderSide.none))),
                  ),
                  const Gap(10),
                  Container(
                      height: 150,
                      decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                                color: Color.fromARGB(61, 0, 0, 0), blurRadius: 6)
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text('Distance'),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width * 0.66,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Stack(alignment: Alignment.center, children: [
                                        const Align(
                                          alignment: Alignment.center,
                                          child: CustomSlider(
                                            assetImage: 'assets/icons/54.png',
                                            inActiveTrackColor: Colors.black38,
                                            linearGradient: LinearGradient(colors: [
                                              Colors.black26,
                                              Colors.black26
                                            ]),
                                            trackHeight: 2.0,
                                            max: 100.0,
                                            divisions: 2,
                                            min: 0.0,
                                            assetImageHeight: 8,
                                            assetImageWidth: 8,
                                          ),
                                        ),
                                        const Positioned(
                                          top: 20,
                                          left: 20,
                                          child: Icon(
                                            Icons.circle,
                                            size: 8,
                                            color: Colors.black26,
                                          ),
                                        ),
                                        const Positioned(
                                          top: 20,
                                          right: 20,
                                          child: Icon(
                                            Icons.circle,
                                            size: 8,
                                            color: Colors.black26,
                                          ),
                                        ),
                                        Positioned(
                                          top: 20,
                                          left: MediaQuery.of(context).size.width *
                                              0.32,
                                          child: const Icon(
                                            Icons.circle,
                                            size: 8,
                                            color: Colors.black26,
                                          ),
                                        ),
                                      ]),
                                      Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                        children: const [
                                          Text('0 KM'),
                                          Text('20 KM'),
                                          Text('50 KM'),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Gap(25),
                          Container(
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width * 0.8,
                            height: 50,
                            decoration: BoxDecoration(
                                color: Styles.greenColor,
                                borderRadius: BorderRadius.circular(10)),
                            child: const Text(
                              'Done',
                              style: TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          )
                        ],
                      )),
                  const Gap(10),
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: [
                          HospitalCardWidget(
                              'https://images.unsplash.com/photo-1666214278797-b2cc1b12be76?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',
                              'Civil Hospital'),
                          const Gap(10),
                          HospitalCardWidget(
                              'https://images.unsplash.com/photo-1666214278797-b2cc1b12be76?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',
                              'gni'),
                          const Gap(10),
                          HospitalCardWidget(
                              'https://images.unsplash.com/photo-1666214278797-b2cc1b12be76?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',
                              'Health Care'),
                          const Gap(10),
                          HospitalCardWidget(
                              'https://images.unsplash.com/photo-1666214278797-b2cc1b12be76?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',
                              'znxn'),
                          const Gap(10),
                          HospitalCardWidget(
                              'https://images.unsplash.com/photo-1666214278797-b2cc1b12be76?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',
                              'vasu'),
                          const Gap(10),
                          HospitalCardWidget(
                              'https://images.unsplash.com/photo-1666214278797-b2cc1b12be76?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',
                              'Paras'),
                          const Gap(10),
                          HospitalCardWidget(
                              'https://images.unsplash.com/photo-1666214278797-b2cc1b12be76?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',
                              'AS Hospital'),
                          const Gap(10),
                          HospitalCardWidget(
                              'https://images.unsplash.com/photo-1666214278797-b2cc1b12be76?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',
                              'daka'),
                          const Gap(10),
                          HospitalCardWidget(
                              'https://images.unsplash.com/photo-1666214278797-b2cc1b12be76?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',
                              ''),
                          const Gap(10),
                          HospitalCardWidget(
                              'https://images.unsplash.com/photo-1666214278797-b2cc1b12be76?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',
                              ''),
                          const Gap(10),
                          HospitalCardWidget(
                              'https://images.unsplash.com/photo-1666214278797-b2cc1b12be76?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',
                              'NMCH'),
                          const Gap(10),
                          HospitalCardWidget(
                              'https://images.unsplash.com/photo-1666214278797-b2cc1b12be76?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',
                              'NMCH'),
                          const Gap(10),
                          HospitalCardWidget(
                              'https://images.unsplash.com/photo-1666214278797-b2cc1b12be76?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',
                              'NMCH'),
                          const Gap(10),
                          HospitalCardWidget(
                              'https://images.unsplash.com/photo-1666214278797-b2cc1b12be76?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',
                              'Near Hospital'),
                          const Gap(10),
                        ],
                      ),
                    ),
                  )
                ],
              )),
        )
    );

  }
}
