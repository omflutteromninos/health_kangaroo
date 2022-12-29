import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hk/screens/emergency_contacts_screen.dart';
import 'package:hk/screens/my_order_screen.dart';
import 'package:hk/screens/setting_hospital_booking_screen.dart';
import 'package:hk/screens/setting_my_consultation_Screen.dart';
import 'package:hk/screens/ambulance_booking_screen.dart';

import '../utils/app_styles.dart';
import 'my_order_detail_screen.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        title: const Text('SETTINGS'),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: size.width,
          // height: size.height,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Gap(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 29,
                    backgroundColor: Styles.greenColor,
                    child: const CircleAvatar(
                      radius: 28,
                      backgroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1612349317150-e413f6a5b16d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text('Deepak Joshi',
                      style: Styles.mediumText
                          .copyWith(fontWeight: FontWeight.w500))
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20, left: 20),
                child: Container(
                  color: Colors.white,
                  width: size.width,
                  child: Column(
                    children: [
                      MyListile(
                        myIcon: Icons.person,
                        myText: 'My Consultation',
                        ontap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return const MyConsult();
                          }));
                        },
                      ),
                      MyListile(
                        myIcon: Icons.card_giftcard,
                        myText: 'My Orders Status',
                        ontap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const MyOrderScreen(),
                              ));
                        },
                      ),
                      MyListile(
                        myIcon: Icons.format_line_spacing,
                        myText: 'My Orders Details',
                        ontap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const MyOrdersDetailScreen(),
                              ));
                        },
                      ),
                      MyListile(
                        myIcon: Icons.house_siding,
                        myText: 'My Hospital Appointments',
                        ontap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return const HospitalBookingScreen();
                          }));
                        },
                      ),
                      MyListile(
                        myIcon: Icons.car_rental,
                        myText: 'Ambulance Booking',
                        ontap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return const AmbulanceBookingScreen();
                          }));
                        },
                      ),
                      MyListile(
                        myIcon: Icons.phone,
                        myText: 'Emergency Contacts',
                        ontap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const EmergencyContactsScreen(),
                              ));
                        },
                      ),
                      MyListile(
                        myIcon: Icons.local_offer_outlined,
                        myText: 'Coupons & Offers',
                        ontap: () {},
                      ),
                      MyListile(
                        myIcon: Icons.contactless,
                        myText: 'Contact Us',
                        ontap: () {},
                      ),
                      MyListile(
                        myIcon: Icons.share,
                        myText: 'Shares',
                        ontap: () {},
                      ),
                      MyListile(
                        myIcon: Icons.logout,
                        myText: 'Logout',
                        ontap: () {},
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MyListile extends StatelessWidget {
  MyListile(
      {Key? key,
      required this.myIcon,
      required this.myText,
      required this.ontap})
      : super(key: key);
  IconData myIcon;
  String myText;
  Function() ontap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: SizedBox(
        height: 55,
        child: ListTile(
          leading: Icon(
            myIcon,
            size: 35,
            color: Styles.greenColor,
          ),
          title: Text(
            myText,
            style: const TextStyle(fontSize: 16),
          ),
          trailing: CircleAvatar(
            radius: 14,
            backgroundColor: Styles.greenColor,
            child: const Center(
              child: Icon(
                Icons.arrow_forward_ios_sharp,
                size: 12,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
