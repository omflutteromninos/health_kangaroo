import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hk/screens/location_screen.dart';
import 'package:hk/widgets/hospital_card_widget.dart';

import '../utils/app_styles.dart';
import 'bottom_nav.dart';
import 'distance_filter_screen.dart';

class HospitalScreen extends StatefulWidget {
  const HospitalScreen({super.key});

  @override
  State<HospitalScreen> createState() => _HospitalScreenState();
}

class _HospitalScreenState extends State<HospitalScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const BottomNav(),
                    ));
              },
              child: Icon(Icons.adaptive.arrow_back)),
          backgroundColor: const Color.fromARGB(0, 255, 255, 255),
          foregroundColor: Colors.black,
          elevation: 0,
          title: const Text('Hospitals'),
          actions: [
            InkWell(
              onTap: () {
                setState(() {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return SizedBox(
                          height: MediaQuery.of(context).size.height,
                          child: Padding(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.5 -
                                    150),
                            child: AlertDialog(
                              actionsAlignment: MainAxisAlignment.center,

                              actionsPadding: EdgeInsets.zero,
                              titleTextStyle: TextStyle(
                                  color: Styles.greenColor, fontSize: 22),
                              backgroundColor: Colors.transparent,
                              alignment: Alignment.topCenter,

                              actions: [
                                SizedBox(
                                    height: 160,
                                    child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 20, horizontal: 10),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        alignment: Alignment.center,
                                        width: 300,
                                        height: 150,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            InkWell(
                                              onTap: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          const LocationScreen(),
                                                    ));
                                              },
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  const Icon(
                                                    Icons.circle_outlined,
                                                    color: Colors.black45,
                                                  ),
                                                  const Gap(5),
                                                  Text(
                                                    'Filter By Location',
                                                    style: TextStyle(
                                                        color:
                                                            Styles.greenColor,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 20),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            const Divider(
                                              color: Colors.black45,
                                              thickness: 1,
                                              height: 30,
                                            ),
                                            InkWell(
                                              onTap: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          const DistanceFilterScreen(),
                                                    ));
                                              },
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  const Icon(
                                                    Icons.circle_outlined,
                                                    color: Colors.black45,
                                                  ),
                                                  const Gap(5),
                                                  Text(
                                                    'Filter By Distance',
                                                    style: TextStyle(
                                                        color:
                                                            Styles.greenColor,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 20),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            const Gap(10),
                                          ],
                                        )))
                              ],
                              // icon: Icon(Icons.thumb_up),
                              // content: Text(
                              //     'You have scored 10 points, Congratulations!!!'),
                            ),
                          ),
                        );
                      });
                });
              },
              child: const Padding(
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                child: Icon(Icons.filter_alt_rounded),
              ),
            ),
          ]),
      body: Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.83,
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
              const Gap(20),
              Expanded(
                child: SingleChildScrollView(
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
    );
  }
}
