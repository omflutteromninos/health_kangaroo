import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hk/utils/app_styles.dart';

import 'booking_option_screen.dart';
import 'hostpital_screen.dart';

class HospitalDetailsScreen extends StatefulWidget {
  const HospitalDetailsScreen({super.key});

  @override
  State<HospitalDetailsScreen> createState() => _HospitalDetailsScreenState();
}

class _HospitalDetailsScreenState extends State<HospitalDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HospitalScreen(),
                  ));
            },
            child: Icon(Icons.adaptive.arrow_back)),
        centerTitle: true,
        elevation: 0,
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        title: const Text('Hospital Details'),
      ),
      body: SingleChildScrollView(
        child: Container(
            color: Styles.bgColor,
            padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://images.unsplash.com/photo-1577563908411-5077b6dc7624?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'),
                        fit: BoxFit.cover),
                  ),
                ),
                const Gap(25),
                const Text(
                  'Welcome to Civil Hospital',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                const Divider(
                  thickness: 1,
                  color: Colors.black38,
                ),
                Text(
                  'Open 24 Hours',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Styles.greenColor),
                ),
                const Gap(20),
                Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            const Text(
                              'ICU',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const Gap(8),
                            Icon(
                              Icons.tv,
                              color: Styles.greenColor,
                            ),
                            const Gap(8),
                            const Text(
                              '0',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            const Text(
                              'General',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const Gap(8),
                            Icon(
                              Icons.local_hospital,
                              color: Styles.greenColor,
                            ),
                            const Gap(8),
                            const Text(
                              '0',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            const Text(
                              'Pharmacy',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const Gap(8),
                            Icon(
                              Icons.medical_services_outlined,
                              color: Styles.greenColor,
                            ),
                            const Gap(8),
                            const Text(
                              '24 Hrs',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const Gap(20),
                Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 20),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '   Multi Specialities',
                            style: TextStyle(
                              fontSize: 18,
                              color: Styles.greenColor,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        const Gap(10),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                children: const [
                                  Text('    '),
                                  Text('    '),
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 15),
                                    width:
                                        MediaQuery.of(context).size.width * 0.5,
                                    decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            48, 166, 214, 167),
                                        border: Border.all(
                                            width: 2, color: Styles.greenColor),
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: Text(
                                      'Select Specialist',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          color: Styles.greenColor),
                                    ),
                                  ),
                                  const Gap(10),
                                  Container(
                                    alignment: Alignment.center,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 15),
                                    width:
                                        MediaQuery.of(context).size.width * 0.5,
                                    decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            48, 166, 214, 167),
                                        border: Border.all(
                                            width: 2, color: Styles.greenColor),
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: Text(
                                      'Endocrinologists',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          color: Styles.greenColor),
                                    ),
                                  )
                                ],
                              ),
                              const Gap(20),
                              Column(
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 15),
                                    width:
                                        MediaQuery.of(context).size.width * 0.5,
                                    decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            48, 166, 214, 167),
                                        border: Border.all(
                                            width: 2, color: Styles.greenColor),
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: Text(
                                      'Emergency Medi...',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          color: Styles.greenColor),
                                    ),
                                  ),
                                  const Gap(10),
                                  Container(
                                    alignment: Alignment.center,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 15),
                                    width:
                                        MediaQuery.of(context).size.width * 0.5,
                                    decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            48, 166, 214, 167),
                                        border: Border.all(
                                            width: 2, color: Styles.greenColor),
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: Text(
                                      'Gastroenterologists',
                                      style: TextStyle(
                                          overflow: TextOverflow.ellipsis,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          color: Styles.greenColor),
                                    ),
                                  )
                                ],
                              ),
                              const Gap(20),
                              Column(
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 15),
                                    width:
                                        MediaQuery.of(context).size.width * 0.5,
                                    decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            48, 166, 214, 167),
                                        border: Border.all(
                                            width: 2, color: Styles.greenColor),
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: Text(
                                      'Hematologists',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          color: Styles.greenColor),
                                    ),
                                  ),
                                  const Gap(10),
                                  Container(
                                    alignment: Alignment.center,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 15),
                                    width:
                                        MediaQuery.of(context).size.width * 0.5,
                                    decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            48, 166, 214, 167),
                                        border: Border.all(
                                            width: 2, color: Styles.greenColor),
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: Text(
                                      'Oncologists',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          color: Styles.greenColor),
                                    ),
                                  )
                                ],
                              ),
                              const Gap(20),
                              Column(
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 15),
                                    width:
                                        MediaQuery.of(context).size.width * 0.5,
                                    decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            48, 166, 214, 167),
                                        border: Border.all(
                                            width: 2, color: Styles.greenColor),
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: Text(
                                      'Ophthalmologists',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          color: Styles.greenColor),
                                    ),
                                  ),
                                  const Gap(10),
                                  Container(
                                    alignment: Alignment.center,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 15),
                                    width:
                                        MediaQuery.of(context).size.width * 0.5,
                                    decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            48, 166, 214, 167),
                                        border: Border.all(
                                            width: 2, color: Styles.greenColor),
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: Text(
                                      'Pediatricians',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          color: Styles.greenColor),
                                    ),
                                  )
                                ],
                              ),
                              const Gap(20),
                              Column(
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 15),
                                    width:
                                        MediaQuery.of(context).size.width * 0.5,
                                    decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            48, 166, 214, 167),
                                        border: Border.all(
                                            width: 2, color: Styles.greenColor),
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: Text(
                                      'Psychiatrists',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          color: Styles.greenColor),
                                    ),
                                  ),
                                  const Gap(10),
                                  Container(
                                    alignment: Alignment.center,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 15),
                                    width:
                                        MediaQuery.of(context).size.width * 0.5,
                                    decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            48, 166, 214, 167),
                                        border: Border.all(
                                            width: 2, color: Styles.greenColor),
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: Text(
                                      'Heart Specialist',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          color: Styles.greenColor),
                                    ),
                                  )
                                ],
                              ),
                              const Gap(20),
                              Column(
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 15),
                                    width:
                                        MediaQuery.of(context).size.width * 0.5,
                                    decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            48, 166, 214, 167),
                                        border: Border.all(
                                            width: 2, color: Styles.greenColor),
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: Text(
                                      'dfdfdf',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          color: Styles.greenColor),
                                    ),
                                  ),
                                ],
                              ),
                              const Gap(20),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Gap(20),
                Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 20, bottom: 20),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Cashless Insurance',
                            style: TextStyle(
                              fontSize: 18,
                              color: Styles.greenColor,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        const Gap(10),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: Colors.black12,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: const Text(' '),
                                ),
                                const Gap(20),
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: Colors.black12,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: const Text(' '),
                                ),
                              ],
                            ),
                            const Gap(30),
                            Column(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: Colors.black12,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: const Text(' '),
                                ),
                                const Gap(20),
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: Colors.black12,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: const Text(' '),
                                ),
                              ],
                            ),
                            const Gap(30),
                            Column(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: Colors.black12,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: const Text(' '),
                                ),
                                const Gap(20),
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: Colors.black12,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: const Text(' '),
                                ),
                              ],
                            ),
                            const Gap(30),
                            Column(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: Colors.black12,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: const Text(' '),
                                ),
                                const Gap(20),
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: Colors.black12,
                                      borderRadius: BorderRadius.circular(30)),
                                  child: const Text('2'),
                                ),
                              ],
                            ),
                            const Gap(30),
                            Column(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: Colors.black12,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: const Text(' '),
                                ),
                                const Gap(20),
                              ],
                            ),
                            const Gap(30),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const Gap(20),
                Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 20, bottom: 20),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Non-Cashless Insurance',
                            style: TextStyle(
                              fontSize: 18,
                              color: Styles.greenColor,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        const Gap(10),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: Colors.black12,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: const Text(' '),
                                ),
                                const Gap(20),
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: Colors.black12,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: const Text(' '),
                                ),
                              ],
                            ),
                            const Gap(30),
                            Column(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: Colors.black12,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: const Text(' '),
                                ),
                                const Gap(20),
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: Colors.black12,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: const Text(' '),
                                ),
                              ],
                            ),
                            const Gap(30),
                            Column(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: Colors.black12,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: const Text(' '),
                                ),
                                const Gap(20),
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: Colors.black12,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: const Text(' '),
                                ),
                              ],
                            ),
                            const Gap(30),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: Colors.black12,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: const Text(' '),
                                ),
                                const Gap(20),
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: Colors.black12,
                                      borderRadius: BorderRadius.circular(30)),
                                  child: const Text('BAJAJ'),
                                ),
                              ],
                            ),
                            const Gap(30),
                            Column(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: Colors.black12,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: const Text(' '),
                                ),
                                const Gap(20),
                              ],
                            ),
                            const Gap(30),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const Gap(20),
                Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 20, bottom: 20),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Address',
                            style: TextStyle(
                              fontSize: 18,
                              color: Styles.greenColor,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '\n',
                            style: TextStyle(
                              fontSize: 18,
                              color: Styles.greenColor,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Gap(20),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const BookingOptionScreen(),
                        ));
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width * 0.7,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Styles.greenColor,
                        borderRadius: BorderRadius.circular(30)),
                    child: const Text(
                      'Continue',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                const Gap(20),
              ],
            )),
      ),
    );
  }
}
