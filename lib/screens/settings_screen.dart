import 'package:flutter/material.dart';
import 'package:hk/screens/setting_hospital_booking_screen.dart';
import 'package:hk/screens/setting_my_consultation_Screen.dart';

import '../utils/app_styles.dart';

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
      body: Container(
        height: size.height*0.9,
        width: size.width,
        color: Colors.white,
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text('SETTINGS', style: Styles.largeText),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 26,
                    backgroundColor: Styles.greenColor,
                    child: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage('assets/images/img2.jpg'),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Deepak Joshi',
                    style: Styles.mediumText,
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20, left: 20, bottom: 20),
                child: Container(
                  color: Colors.white,
                  height: size.height * 0.65,
                  width: size.width,
                  child: Column(
                    children: [
                      MyListile(myIcon: Icons.person, myText: 'My Consultation', ontap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context){
                         return MyConsult();
                        }));
                      },),
                      MyListile(
                          myIcon: Icons.card_giftcard,
                          myText: 'My Orders Status', ontap: () {  },),
                      MyListile(
                          myIcon: Icons.house_siding,
                          myText: 'My Hospital Appointments', ontap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context){
                          return HospitalScreen();
                        }));
                      },),
                      MyListile(myIcon: Icons.car_rental, myText: 'Trip Details', ontap: () {  },),
                      MyListile(
                          myIcon: Icons.phone, myText: 'Emergency Contacts', ontap: () {  },),
                      MyListile(
                          myIcon: Icons.local_offer_outlined,
                          myText: 'Coupons & Offers', ontap: () {  },),
                      MyListile(myIcon: Icons.share, myText: 'Shares', ontap: () {  },),
                      MyListile(myIcon: Icons.logout, myText: 'Logout', ontap: () {  },),
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
  MyListile({Key? key, required this.myIcon, required this.myText,required this.ontap})
      : super(key: key);
  IconData myIcon;
  String myText;
  Function() ontap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      child: ListTile(
        leading: Icon(
          myIcon,
          color: Styles.greenColor,
        ),
        title: Text(myText),
        trailing: InkWell(
          onTap: ontap,
          child: CircleAvatar(
            radius: 15,
            backgroundColor: Styles.greenColor,
            child: Center(
              child: Icon(
                Icons.arrow_forward_ios_sharp,
                size: 15,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
