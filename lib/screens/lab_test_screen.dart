import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hk/screens/lab_test_upload_screen.dart';
import 'package:hk/utils/app_styles.dart';

class LabTestScreen extends StatefulWidget {
  const LabTestScreen({super.key});

  @override
  State<LabTestScreen> createState() => _LabTestScreenState();
}

class _LabTestScreenState extends State<LabTestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      appBar: AppBar(
          backgroundColor: Styles.bgColor,
          foregroundColor: Colors.black,
          elevation: 0,
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'LAB TEST',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 20),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            right: 10,
                          ),
                          child: Icon(
                            Icons.shopping_cart_outlined,
                            size: 30,
                          ),
                        ),
                      ]),
                ),
              ],
            ),
          ]),
      body: SingleChildScrollView(
        child: Container(
            padding: const EdgeInsets.only(
              top: 10,
              left: 15,
              right: 15,
            ),
            child: Column(
              children: [
                Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        contentPadding: EdgeInsets.zero,
                        fillColor: Colors.white,
                        filled: true,
                        prefixIcon: const Icon(
                          Icons.search_sharp,
                        ),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(30)),
                        label: Text(
                          'Search for Lab Tests',
                          style: GoogleFonts.poppins(color: Styles.greyColor),
                        ),
                      ),
                    ),
                    const Gap(20),
                    Container(
                        padding: const EdgeInsets.only(
                            left: 10, right: 10, top: 12, bottom: 12),
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Styles.greenColor,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Order with your  Prescription',
                                  style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                                Text(
                                  'Upload prescription and  tell us what you need',
                                  style: GoogleFonts.redHatDisplay(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const UploadScreen(),
                                    ));
                              },
                              child: Container(
                                alignment: Alignment.center,
                                width: 100,
                                height: 35,
                                decoration: BoxDecoration(
                                    color: Styles.bgColor,
                                    borderRadius: BorderRadius.circular(20)),
                                child: const Text('Upload'),
                              ),
                            )
                          ],
                        ))
                  ],
                ),
                const Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'POPULAR PACKAGES',
                      style: GoogleFonts.poppins(
                          fontSize: 18,
                          color: Colors.black38,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'VIEW ALL',
                      style: GoogleFonts.poppins(
                          fontSize: 18,
                          color: Colors.black38,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                const Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'PARTNER LABS',
                      style: GoogleFonts.poppins(
                          fontSize: 18,
                          color: Colors.black38,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'VIEW ALL',
                      style: GoogleFonts.poppins(
                          fontSize: 18,
                          color: Colors.black38,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                const Gap(15),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    //set border radius more than 50% of height and width to make circle
                  ),
                  elevation: 10,
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(
                            top: 16, bottom: 16, right: 10, left: 16),
                        child: Row(
                          children: [
                            const CircleAvatar(
                              radius: 42,
                              foregroundImage: NetworkImage(
                                  'https://images.unsplash.com/photo-1612523138351-4643808db8f3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'),
                            ),
                            const Gap(10),
                            Column(
                              children: [
                                SizedBox(
                                  width: 230,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text('Amit Kumar'),
                                          const Gap(4),
                                          Text('Shivajinagar Branch',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Styles.greyColor)),
                                        ],
                                      ),
                                      Text(
                                        'View Lab',
                                        style: TextStyle(
                                            color: Styles.redColor,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 230,
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Working 24 hours: 07:00 A.M - 7:00 P.M',
                                    style: TextStyle(
                                        fontSize: 12, color: Styles.greyColor),
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                                const Gap(20),
                                Container(
                                  width: 230,
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '21+ BRANCHES',
                                    style: TextStyle(
                                        color: Styles.greenColor,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        decoration: BoxDecoration(color: Styles.bgColor),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              children: const [
                                Icon(Icons.workspace_premium),
                                Text(
                                  'NABL',
                                  style: TextStyle(fontSize: 20),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.assignment, color: Styles.greyColor),
                                Text(
                                  'e-report: 1 working day',
                                  style: TextStyle(
                                      fontSize: 16, color: Styles.greyColor),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      const Gap(20),
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}
