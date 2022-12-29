import 'package:flutter/material.dart';
import 'package:hk/utils/app_styles.dart';

class HospitalBookingScreen extends StatefulWidget {
  const HospitalBookingScreen({Key? key}) : super(key: key);

  @override
  State<HospitalBookingScreen> createState() => _HospitalBookingScreenState();
}

class _HospitalBookingScreenState extends State<HospitalBookingScreen> {
  bool mybookSelect = true;
  bool hisSelect = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Styles.bgColor,
        appBar: AppBar(
          backgroundColor: Styles.bgColor,
          foregroundColor: Colors.black,
          centerTitle: true,
          title: const Text('Hospital Bookings'),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: 50,
                width: 307,
                decoration: BoxDecoration(
                  border: Border.all(color: Styles.greenColor),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          mybookSelect = true;
                          hisSelect = false;
                        });
                      },
                      child: Container(
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(
                            color: mybookSelect ? Styles.greenColor : null,
                            borderRadius: const BorderRadius.horizontal(
                                left: Radius.circular(30))),
                        child: Center(
                          child: Text(
                            'MY BOOKINGS',
                            style: Styles.mediumText.copyWith(
                                color:
                                    mybookSelect ? Colors.white : Colors.black),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          hisSelect = true;
                          mybookSelect = false;
                        });
                      },
                      child: Container(
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(
                            color: hisSelect ? Styles.greenColor : null,
                            borderRadius: const BorderRadius.horizontal(
                                right: Radius.circular(30))),
                        child: Center(
                          child: Text(
                            'HISTORY',
                            style: Styles.mediumText.copyWith(
                                color: hisSelect ? Colors.white : Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.grey.shade300,
              // height: size.height * 0.7655,
              width: size.width,
            ),
          ],
        ),
      ),
    );
  }
}
