import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../screens/hospital_details_screen.dart';
import '../utils/app_styles.dart';

class HospitalCardWidget extends StatefulWidget {
  HospitalCardWidget(this.avatarImage, this.heading, {super.key});
  String avatarImage;
  String heading;

  @override
  State<HospitalCardWidget> createState() => _HospitalCardWidgetState();
}

class _HospitalCardWidgetState extends State<HospitalCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Styles.greenColor),
                  borderRadius: BorderRadius.circular(50)),
              child: CircleAvatar(
                radius: 30,
                foregroundImage: NetworkImage(
                  widget.avatarImage,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(widget.heading),
                Row(
                  children: const [
                    Icon(
                      Icons.star,
                      size: 14,
                      color: Colors.amber,
                    ),
                    Icon(
                      Icons.star,
                      size: 14,
                      color: Colors.amber,
                    ),
                    Icon(
                      Icons.star,
                      size: 14,
                      color: Colors.amber,
                    ),
                    Icon(
                      Icons.star,
                      size: 14,
                      color: Colors.amber,
                    ),
                    Icon(
                      Icons.star,
                      size: 14,
                      color: Colors.amber,
                    ),
                  ],
                )
              ],
            ),
            const Gap(10),
            InkWell(
              onTap: () {
                setState(() {
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
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: Styles.greenColor,
                                              borderRadius:
                                                  BorderRadius.circular(50)),
                                          padding: const EdgeInsets.all(10),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                padding:
                                                    const EdgeInsets.all(8),
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30)),
                                                child: Icon(Icons.call,
                                                    size: 30,
                                                    color: Styles.greenColor),
                                              ),
                                              const Text(
                                                '12145161',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.white,
                                                    fontSize: 20),
                                              ),
                                              const Text(''),
                                            ],
                                          ),
                                        )))
                              ],
                              // icon: Icon(Icons.thumb_up),
                              // content: Text(
                              //     'You have scored 10 points, Congratulations!!!'),
                            ),
                          ),
                        );
                      });
                });
              },
              child: Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Styles.greenColor,
                    borderRadius: BorderRadius.circular(20)),
                child: const Icon(
                  Icons.call,
                  size: 20,
                  color: Colors.white,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HospitalDetailsScreen(),
                    ));
              },
              child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                      color: Styles.greenColor,
                      borderRadius: BorderRadius.circular(20)),
                  child: const Text(
                    'Book',
                    style: TextStyle(color: Colors.white),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
