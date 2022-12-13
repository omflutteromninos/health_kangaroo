import 'package:flutter/material.dart';

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
        height: size.height,
        width: size.width,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 25,
              color: Styles.greenColor,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text('SETTINGS',style:Styles.largeText),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 26,
                  backgroundColor: Styles.greenColor,
                  child: CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('images/img2.jpg'),
                  ),
                ),
                SizedBox(width: 10,),
                Text('Deepak Joshi',style: Styles.mediumText,)
              ],
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 20, bottom: 20),
              child: Container(
                  color: Colors.white,
                  height: size.height * 0.70,
                  width: size.width,
                  child: Column(
                    children: [
                      MyListile(myIcon: Icons.person, myText: 'My Consultation'),
                      MyListile(myIcon: Icons.card_giftcard, myText: 'My Orders Status'),
                      MyListile(myIcon: Icons.house_siding, myText: 'My Hospital Appointments'),
                      MyListile(myIcon: Icons.car_rental, myText: 'Trip Details'),
                      MyListile(myIcon: Icons.phone, myText: 'Emergency Contacts'),
                      MyListile(myIcon: Icons.local_offer_outlined, myText: 'Coupons & Offers'),
                      MyListile(myIcon: Icons.share, myText: 'Shares'),
                      MyListile(myIcon: Icons.logout, myText: 'Logout'),
                    ],
                  ),
              ),
            )
          ],
        ),
      ),
    );
  }

}

class MyListile extends StatelessWidget {
  MyListile({Key? key,required this.myIcon,required this.myText}) : super(key: key);
  IconData myIcon;
  String myText;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      child: ListTile(
        leading: Icon(myIcon,color: Styles.greenColor,),
        title: Text(myText),
        trailing: CircleAvatar(
          radius: 15,
          backgroundColor: Styles.greenColor,
          child: Center(
            child: Icon(Icons.arrow_forward_ios_sharp,size: 15,color: Colors.white,),
          ),
        ),
      ),
    );
  }
}

