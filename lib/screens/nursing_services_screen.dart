import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hk/screens/service_appointment_screen.dart';
import 'package:hk/screens/services_screen.dart';
import 'package:hk/utils/app_styles.dart';
import 'package:hk/widgets/nursing_card_widget.dart';
import 'package:hk/widgets/nursing_card_widget2.dart';
import 'package:hk/widgets/nursing_card_widget3.dart';
import 'package:iphone_has_notch/iphone_has_notch.dart';

class NursingScreen extends StatefulWidget {
  const NursingScreen({super.key});

  @override
  State<NursingScreen> createState() => _NursingScreenState();
}

final CarouselController _controller = CarouselController();

final List<String> imgList = [
  'https://images.unsplash.com/photo-1532938911079-1b06ac7ceec7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1332&q=80',
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

class _NursingScreenState extends State<NursingScreen> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Styles.greenColor,
          toolbarHeight: IphoneHasNotch.hasNotch ? -12 : 0,

          // toolbarHeight: Theme.of(context).platform == TargetPlatform.iOS ?  0 : 0,
          elevation: 0,
        ),
        body: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            elevation: 0,
            foregroundColor: Colors.black,
            backgroundColor: Colors.transparent,
            title: Container(
              width: MediaQuery.of(context).size.width * 0.85,
              padding: const EdgeInsets.only(right: 20),
              height: 45,
              decoration: BoxDecoration(boxShadow: const [
                BoxShadow(color: Color.fromARGB(61, 0, 0, 0), blurRadius: 4)
              ], color: Colors.white, borderRadius: BorderRadius.circular(30)),
              child: const TextField(
                  decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      label: Text(
                        'Search Services',
                        style: TextStyle(color: Colors.black38, fontSize: 12),
                      ),
                      prefixIcon: Icon(Icons.search_rounded),
                      border: OutlineInputBorder(borderSide: BorderSide.none))),
            ),
          ),
          body: SingleChildScrollView(
            child: Container(
              alignment: Alignment.center,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        right: 20, left: 20, top: 8, bottom: 8),
                    child: Stack(
                      children: [
                        CarouselSlider(
                          items: imageSliders,
                          carouselController: _controller,
                          options: CarouselOptions(
                              viewportFraction: 1,
                              autoPlay: true,
                              aspectRatio: 2.6,
                              enlargeCenterPage: true,
                              onPageChanged: (index, reason) {
                                setState(() {
                                  _current = index;
                                });
                              }),
                        ),
                        Positioned(
                          bottom: 8,
                          right: size.width * 0.41,
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: imgList.asMap().entries.map((entry) {
                                return GestureDetector(
                                  onTap: () => _controller.animateToPage(entry.key),
                                  child: Container(
                                    width: 13.0,
                                    height: 13.0,
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 8.0, horizontal: 5.0),
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: _current == entry.key
                                            ? Colors.green
                                            : Colors.white),
                                  ),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                      alignment: Alignment.centerLeft,
                      width: MediaQuery.of(context).size.width,
                      height: 30,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 233, 233, 233)),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 30),
                        child: Text(
                          'Upload Prescription & Book',
                          style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                      )),
                  const Gap(10),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ServiceAppointment(),
                          ));
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      height: size.height * 0.07,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(43, 76, 175, 79),
                          border: Border.all(width: 1, color: Styles.greenColor),
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Icon(
                            Icons.cloud,
                            color: Colors.blue,
                            size: 32,
                          ),
                          Text(
                            'Get Care at home >',
                            style: TextStyle(
                                fontSize: 18,
                                color: Styles.greenColor,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                  ),
                  const Gap(10),
                  Container(
                      alignment: Alignment.centerLeft,
                      width: MediaQuery.of(context).size.width,
                      height: 30,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          children: [
                            const Text(
                              'New Booking',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                            const Gap(10),
                            Icon(
                              Icons.add_circle,
                              color: Styles.greenColor,
                              size: 30,
                            )
                          ],
                        ),
                      )),
                  const Gap(5),
                  Container(
                    height: size.height * 0.38,
                    // padding:
                    // const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    color: Styles.bgColor,
                    width: MediaQuery.of(context).size.width,
                    child: GridView.builder(
                        scrollDirection: Axis.horizontal,
                        gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: 0.75,
                          crossAxisCount: 2,
                        ),
                        itemCount: 9,
                        itemBuilder: (BuildContext context, int index) {
                          return InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const ServicesScreen(),
                                  ));
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 10, top: 5, bottom: 5),
                              child: NursingCardWidget(
                                  'https://images.unsplash.com/photo-1527613426441-4da17471b66d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1152&q=80',
                                  'Home Personal Care',
                                  'Consultation, Certification & Something'),
                            ),
                          );
                        }),
                  ),
                  Column(
                    children: [
                      const Divider(
                        thickness: 0.5,
                        color: Colors.black,
                      ),
                      Container(
                          alignment: Alignment.centerLeft,
                          padding: const EdgeInsets.only(
                              right: 15, top: 5, bottom: 5, left: 15),
                          child: const Text(
                            'Specific Services we provide and Reasons for Engaging our Services',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 15),
                          )),
                    ],
                  ),
                  Container(
                    height: size.height * 0.27,
                    padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
                    color: Styles.bgColor,
                    width: MediaQuery.of(context).size.width,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: NursingCardWidget2(
                                'https://images.unsplash.com/photo-1527613426441-4da17471b66d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1152&q=80',
                                'Respite Care'),
                          );
                        }),
                  ),
                  const Divider(
                    height: 0,
                    color: Colors.black38,
                  ),
                  Container(
                      alignment: Alignment.centerLeft,
                      padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 13),
                      child: const Text(
                        'Medical Conditions we Support & Packages',
                        style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                      )),
                  Container(
                    padding: const EdgeInsets.only(
                        left: 10, top: 10, bottom: 10, right: 10),
                    color: Styles.bgColor,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        NursingCardWidget3(
                            'https://images.unsplash.com/photo-1527613426441-4da17471b66d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1152&q=80',
                            'Home Care Nurse'),
                        NursingCardWidget3(
                            'https://images.unsplash.com/photo-1527613426441-4da17471b66d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1152&q=80',
                            'Cancer Care Nurse'),
                        NursingCardWidget3(
                            'https://images.unsplash.com/photo-1527613426441-4da17471b66d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1152&q=80',
                            'ICU Care Nurse'),
                        NursingCardWidget3(
                            'https://images.unsplash.com/photo-1527613426441-4da17471b66d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1152&q=80',
                            'Complete Care Nurse'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
    );
  }
}
