import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hk/screens/lab_test_screen.dart';
import 'package:hk/utils/app_styles.dart';
import 'package:hk/widgets/health_card_widget.dart';
import 'package:hk/widgets/home_card_widget.dart';
import 'package:hk/widgets/home_card_widget2.dart';
import 'package:hk/widgets/left_heading_widget.dart';
import 'package:hk/widgets/tracker_card_widget.dart';

import '../widgets/home_card_widget3.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

final CarouselController _controller = CarouselController();

final List<String> imgList = [
  'https://images.unsplash.com/photo-1532938911079-1b06ac7ceec7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1332&q=80',
  'https://images.unsplash.com/photo-1532938911079-1b06ac7ceec7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1332&q=80',
  'https://images.unsplash.com/photo-1532938911079-1b06ac7ceec7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1332&q=80',
  'https://images.unsplash.com/photo-1532938911079-1b06ac7ceec7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1332&q=80',
  'https://images.unsplash.com/photo-1532938911079-1b06ac7ceec7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1332&q=80',
  'https://images.unsplash.com/photo-1532938911079-1b06ac7ceec7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1332&q=80'
];
final List<Widget> imageSliders = imgList
    .map((item) => Container(
          child: ClipRRect(
              child: Stack(
            children: <Widget>[
              Image.network(
                item,
                fit: BoxFit.cover,
                width: 600,
              ),
            ],
          )),
        ))
    .toList();

class _HomePageState extends State<HomePage> {
  int _current = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            color: Styles.bgColor,
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                const Gap(30),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.07,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 70,
                        child: const Image(
                            image: AssetImage('assets/icons/hk_logo.png')),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Good Morning',
                            style: GoogleFonts.poppins(
                                fontSize: 17,
                                color: Styles.primaryColor,
                                fontWeight: FontWeight.w600),
                          ),
                          const Text('Mr. Deepak Joshi'),
                        ],
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        width: 50,
                        child: const Icon(
                          Icons.notifications,
                          size: 30,
                          color: Colors.amber,
                        ),
                      ),
                    ],
                  ),
                ),
                Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LabTestScreen(),
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
                    HomeCard(
                        'assets/icons/8.png',
                        Styles.purpleColor,
                        Styles.purpleColor,
                        'Buy Medicines',
                        'Doorstep Delivery',
                        Styles.purpleColor),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    HomeCard2(
                        'assets/icons/7.png',
                        Styles.blueColor,
                        Styles.blueColor,
                        'Dr. Appointment',
                        'Online Doctors 24/7',
                        Styles.blueColor),
                    HomeCard2(
                        'assets/icons/6.png',
                        Styles.greenColor,
                        Styles.greenColor,
                        'Nursing Services',
                        'Nursing Services 24/7',
                        Styles.greenColor),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    HomeCard3(
                        'assets/icons/ambulance.png',
                        Styles.redColor,
                        Styles.redColor,
                        'Dr. Appointment',
                        'Serve to save life',
                        Styles.redColor),
                    HomeCard3(
                        'assets/icons/15.png',
                        Styles.lightBlueColor,
                        Styles.lightBlueColor,
                        'Hospital',
                        '24/7 Hours',
                        Styles.lightBlueColor),
                  ],
                ),
                Gap(20),
                Container(
                  width: MediaQuery.of(context).size.width,
                  // height: 300,
                  child: Stack(children: [
                    CarouselSlider(
                      items: imageSliders,
                      carouselController: _controller,
                      options: CarouselOptions(
                          height: 150,
                          disableCenter: true,
                          autoPlay: true,
                          // enlargeCenterPage: true,
                          aspectRatio: 4.0,
                          onPageChanged: (index, reason) {
                            setState(() {
                              _current = index;
                            });
                          }),
                    ),
                    Positioned(
                      left: MediaQuery.of(context).size.width / 4,
                      bottom: 10,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: imgList.asMap().entries.map((entry) {
                          return GestureDetector(
                            onTap: () => _controller.animateToPage(entry.key),
                            child: Container(
                              width: 12.0,
                              height: 12.0,
                              margin: EdgeInsets.symmetric(
                                  vertical: 0.0, horizontal: 4.0),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: (Theme.of(context).brightness ==
                                              Brightness.dark
                                          ? Color.fromARGB(255, 255, 255, 255)
                                          : Color.fromARGB(255, 255, 255, 255))
                                      .withOpacity(
                                          _current == entry.key ? 0.9 : 0.4)),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ]),
                ),
                const Divider(
                  height: 20,
                  thickness: 1,
                ),
                LeftHeading('Health Article'),
                const Gap(5),
                SingleChildScrollView(
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
                const Divider(
                  height: 20,
                  thickness: 1,
                ),
                LeftHeading('Health Tracker'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TrackerCard('Health Tracker', 'assets/icons/10.png',
                        'Track your health digitally'),
                    TrackerCard('Pill Reminder', 'assets/icons/22.png',
                        'Set reminder now\nNever miss a pill'),
                  ],
                )
              ],
            )),
      ),
    );
  }
}
