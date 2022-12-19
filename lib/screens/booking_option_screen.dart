import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hk/screens/patient_screen.dart';
import 'package:hk/utils/app_styles.dart';

import 'hospital_details_screen.dart';

class BookingOptionScreen extends StatefulWidget {
  const BookingOptionScreen({super.key});

  @override
  State<BookingOptionScreen> createState() => _BookingOptionScreenState();
}

class _BookingOptionScreenState extends State<BookingOptionScreen> {
  bool _isVisible = false;
  String? bookingType;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HospitalDetailsScreen(),
                    ));
              },
              child: Icon(Icons.adaptive.arrow_back)),
          centerTitle: true,
          elevation: 1,
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          title: const Image(
            image: AssetImage(
              'assets/icons/hk_logo.png',
            ),
            height: 50,
          )),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.89,
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Select Booking Type:-',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                  ),
                  const Gap(20),
                  Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 60,
                    decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(blurRadius: 5, color: Colors.black12)
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: RadioListTile(
                      toggleable: false,
                      title: const Text("General Booking"),
                      value: "general",
                      groupValue: bookingType,
                      onChanged: (value) {
                        setState(() {
                          bookingType = value.toString();
                          _isVisible = false;
                        });
                      },
                    ),
                  ),
                  const Gap(20),
                  Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 60,
                    decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(blurRadius: 5, color: Colors.black12)
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: RadioListTile(
                      toggleable: false,
                      title: const Text("Referral Booking"),
                      value: "referral",
                      groupValue: bookingType,
                      onChanged: (value) {
                        setState(() {
                          bookingType = value.toString();

                          _isVisible = !_isVisible;
                        });
                      },
                    ),
                  ),
                  const Gap(20),
                  Visibility(
                    visible: _isVisible,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Referred From:-',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 18),
                        ),
                        const Gap(15),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          padding: const EdgeInsets.all(8),
                          height: 50,
                          decoration: BoxDecoration(
                              boxShadow: const [
                                BoxShadow(
                                    color: Color.fromARGB(61, 0, 0, 0),
                                    blurRadius: 6)
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: const TextField(
                              decoration: InputDecoration(
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.never,
                                  label: Text(
                                    'e.g. Hospital Name - City',
                                    style: TextStyle(color: Colors.black26),
                                  ),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide.none))),
                        ),
                        const Gap(20),
                        Row(
                          children: [
                            Icon(
                              Icons.add_circle,
                              color: Styles.greenColor,
                              size: 30,
                            ),
                            const Gap(5),
                            const Text(
                              'Add LAMA Summary/Referral Card:',
                              style: TextStyle(
                                  overflow: TextOverflow.ellipsis,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              InkWell(
                onTap: () {
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
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            InkWell(
                                              onTap: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          const PatientScreen(),
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
                                                    'Self',
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
                                                          const PatientScreen(),
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
                                                    'Add Patient',
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
                },
                child: Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Styles.greenColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: const Text(
                    'Add Patient',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
