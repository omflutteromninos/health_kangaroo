import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hk/screens/appointment_form_screen.dart';

import '../utils/app_styles.dart';

class ServicesWidget extends StatelessWidget {
  ServicesWidget(this.imageUrl, this.heading, {super.key});
  String imageUrl;
  String heading;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: const [
        BoxShadow(
            spreadRadius: 2,
            blurRadius: 5,
            color: Colors.black26,
            offset: Offset(1.0, 2.0))
      ], color: Colors.white, borderRadius: BorderRadius.circular(60)),
      padding: const EdgeInsets.all(10),
      child: Row(children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: Styles.greenColor, width: 2),
              borderRadius: BorderRadius.circular(60)),
          child: CircleAvatar(
            radius: 30,
            foregroundImage: NetworkImage(imageUrl),
          ),
        ),
        const Gap(10),
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AppointmentFormScreen(),
                ));
          },
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.6,
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    heading,
                    style: const TextStyle(
                        fontWeight: FontWeight.w500, fontSize: 18),
                  ),
                ),
                const Gap(10),
                Align(
                  alignment: Alignment.centerRight,
                  child: InkWell(
                    onTap: () {
                      // when raised button is pressed
                      // we display showModalBottomSheet
                      showModalBottomSheet<void>(
                          backgroundColor: Colors.transparent,
                          // context and builder are
                          // required properties in this widget
                          context: context,
                          builder: (BuildContext context) {
                            // we set up a container inside which
                            // we create center column and display text

                            // Returning SizedBox instead of a Container
                            return Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Icon(
                                    Icons.cancel_outlined,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                ),
                                const Gap(10),
                                Container(
                                  padding: const EdgeInsets.only(
                                      top: 15, left: 15, right: 15),
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(40),
                                        topRight: Radius.circular(40),
                                      )),
                                  width: MediaQuery.of(context).size.width,
                                  // height:
                                  //     MediaQuery.of(context).size.height * 0.4,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        'Service Details',
                                        style: TextStyle(
                                            color: Styles.greenColor,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      const Divider(
                                        thickness: 1,
                                      ),
                                      const Text(
                                        'skin care nurse',
                                        style: TextStyle(
                                            color: Colors.black45,
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal),
                                      ),
                                      const Divider(
                                        thickness: 1,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Service Description:',
                                            style: TextStyle(
                                                color: Styles.greenColor,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          const Expanded(
                                            child: Text(
                                                'Affordable Senior Home Care. Call for a free, No Obligation Consult. Giving people the help they need to live in th place'),
                                          )
                                        ],
                                      ),
                                      const Divider(
                                        thickness: 1,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Consumables Used:',
                                            style: TextStyle(
                                                color: Styles.greenColor,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          const Expanded(
                                            child: Text('Injection'),
                                          )
                                        ],
                                      ),
                                      const Divider(
                                        thickness: 1,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Procedure Included:',
                                            style: TextStyle(
                                                color: Styles.greenColor,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          const Expanded(
                                            child: Text('done professionally'),
                                          )
                                        ],
                                      ),
                                      const Divider(
                                        thickness: 1,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Services offered:',
                                            style: TextStyle(
                                                color: Styles.greenColor,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          const Expanded(
                                            child: Text('all services'),
                                          ),
                                        ],
                                      ),
                                      const Gap(10),
                                    ],
                                  ),
                                ),
                                Container(
                                    alignment: Alignment.center,
                                    width: MediaQuery.of(context).size.width,
                                    height: 50,
                                    decoration: BoxDecoration(
                                        color: Styles.greenColor,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: const Text(
                                      'DONE',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18),
                                    )),
                              ],
                            );
                          });
                    },
                    child: Text(
                      'View Details',
                      style: TextStyle(
                          color: Styles.redColor,
                          decoration: TextDecoration.underline),
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}
