import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hk/screens/ambulance_screen.dart';
import 'package:hk/screens/appointment_screen.dart';
import 'package:hk/screens/hostpital_screen.dart';
import 'package:hk/screens/lab_test_screen.dart';
import 'package:hk/screens/notification_screen.dart';
import 'package:hk/screens/nursing_services_screen.dart';
import 'package:hk/utils/app_styles.dart';
import 'package:hk/widgets/health_card_widget.dart';
import 'package:hk/widgets/home_card_widget.dart';
import 'package:hk/widgets/home_card_widget2.dart';
import 'package:hk/widgets/left_heading_widget.dart';
import 'package:hk/widgets/tracker_card_widget.dart';
import 'package:iphone_has_notch/iphone_has_notch.dart';

import '../widgets/home_card_widget3.dart';
import 'health_tracker_screen.dart';
import 'mediciens_screen.dart';
import 'package:device_info_plus/device_info_plus.dart' as device;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

final CarouselController _controller = CarouselController();

final List<String> imgList = [
  'https://images.unsplash.com/photo-1532938911079-1b06ac7ceec7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1332&q=80',
];
final List<Widget> imageSliders = imgList
    .map((item) => ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.network(
          height: 150,
          item,
          fit: BoxFit.cover,
          width: 800,
        )))
    .toList();

class _HomePageState extends State<HomePage> {
  // ignore: unused_field
  int _current = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Styles.bgColor,
        elevation: 0,
        foregroundColor: Colors.black,
        actions: [
          InkWell(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return NotificationScreen();
              }));
            },
            child: Container(
              padding: const EdgeInsets.only(right: 10),
              alignment: Alignment.centerRight,
              width: 50,
              child: const Icon(
                Icons.notifications,
                size: 30,
                color: Colors.amber,
              ),
            ),
          ),
        ],
        leadingWidth: 80,
        leading: Container(
            padding: const EdgeInsets.only(left: 10),
            child:
            const Image(image: AssetImage('assets/icons/hk_logo.png'))),
        title: Column(
          children: [
            Text(
              'Good Morning',
              style: GoogleFonts.poppins(
                  fontSize: 17,
                  color: Styles.primaryColor,
                  fontWeight: FontWeight.w600),
            ),
            const Text(
              'Our Team Members',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
            color: Styles.bgColor,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LabTestScreen(),
                            ));
                      },
                      child: HomeCard(
                          'assets/icons/9.png',
                          Styles.yellowColor,
                          Styles.yellowColor,
                          'Book Lab Test',
                          'Safe & hygienic',
                          Styles.yellowColor),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const MedicineScreen(),
                            ));
                      },
                      child: HomeCard(
                          'assets/icons/8.png',
                          Styles.purpleColor,
                          Styles.purpleColor,
                          'Buy Medicines',
                          'Doorstep Delivery',
                          Styles.purpleColor),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const AppointmentScreen(),
                            ));
                      },
                      child: HomeCard2(
                          'assets/icons/7.png',
                          Styles.blueColor,
                          Styles.blueColor,
                          'Dr. Appointment',
                          'Online Doctors 24/7',
                          Styles.blueColor),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const NursingScreen(),
                            ));
                      },
                      child: HomeCard2(
                          'assets/icons/6.png',
                          Styles.greenColor,
                          Styles.greenColor,
                          'Nursing Services',
                          'Nursing Services 24/7',
                          Styles.greenColor),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const AmbulanceScreen(),
                            ));
                      },
                      child: HomeCard3(
                          'assets/icons/ambulance.png',
                          Styles.redColor,
                          Styles.redColor,
                          'Ambulance',
                          'Serve to save life',
                          Styles.redColor),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HospitalScreen(),
                            ));
                      },
                      child: HomeCard3(
                          'assets/icons/15.png',
                          Styles.lightBlueColor,
                          Styles.lightBlueColor,
                          'Hospital',
                          '24/7 Hours',
                          Styles.lightBlueColor),
                    ),
                  ],
                ),
                Gap(8),
                Padding(
                  padding: const EdgeInsets.only(right: 15,left: 15),
                  child: CarouselSlider(
                    items: imageSliders,
                    carouselController: _controller,
                    options: CarouselOptions(
                        viewportFraction: 1,
                        disableCenter: true,
                        autoPlay: true,
                        // enlargeCenterPage: true,
                        aspectRatio: 3,
                        onPageChanged: (index, reason) {
                          setState(() {
                            _current = index;
                          });
                        }),
                  ),
                ),
                const Divider(
                  thickness: 1,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: LeftHeading('Health Article'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        HealthCard(
                            'https://images.unsplash.com/photo-1532938911079-1b06ac7ceec7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1332&q=80',
                            'Health Article',
                            'How do doctors survive this pandamic'),
                        HealthCard(
                            'https://images.unsplash.com/photo-1579684453423-f84349ef60b0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1191&q=80',
                            'Health Article',
                            'How do doctors survive this pandamic'),
                        HealthCard(
                            'https://images.unsplash.com/photo-1527613426441-4da17471b66d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2052&q=80',
                            'Health Article',
                            'How do doctors survive this pandamic'),
                      ],
                    ),
                  ),
                ),
                const Divider(
                  height: 20,
                  thickness: 1,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: LeftHeading('Health Tracker'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8,right: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return const HealthTracker();
                          }));
                        },
                        child: TrackerCard(
                            'Health Tracker',
                            'assets/icons/10.png',
                            'Track your health digitally'),
                      ),
                      TrackerCard('Pill Reminder', 'assets/icons/22.png',
                          'Set reminder now\nNever miss a pill'),
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}
