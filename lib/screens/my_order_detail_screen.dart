import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:hk/screens/track_order_screen.dart';

import '../utils/app_styles.dart';
import 'Pharmacy_View_Detail_screen.dart';

class MyOrdersDetailScreen extends StatefulWidget {
  const MyOrdersDetailScreen({Key? key}) : super(key: key);

  @override
  State<MyOrdersDetailScreen> createState() => _MyOrdersDetailScreenState();
}

class _MyOrdersDetailScreenState extends State<MyOrdersDetailScreen> {
  bool PhSelect = true;
  bool LabSelect = false;
  bool NurSelect = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text('My Order',
            style: Styles.largeText.copyWith(fontWeight: FontWeight.w400)),
        centerTitle: true,
        actions: [
          InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.highlight_remove_sharp,
                color: Colors.black,
              )),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      body: SizedBox(
        width: size.width,
        height: size.height * 0.89,
        child: Column(
          children: [
            Container(
                height: 50,
                width: size.width * 0.9,
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Styles.primaryColor),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          PhSelect = true;
                          LabSelect = false;
                          NurSelect = false;
                        });
                      },
                      child: Container(
                        height: 50,
                        width: size.width * 0.3,
                        decoration: BoxDecoration(
                            color: PhSelect ? Styles.greenColor : Colors.white,
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(25),
                              topLeft: Radius.circular(25),
                            )),
                        child: Center(
                            child: Text(
                          'PHARMACY',
                          style: TextStyle(
                            color: PhSelect ? Colors.white : Colors.black,
                          ),
                        )),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          PhSelect = false;
                          LabSelect = true;
                          NurSelect = false;
                        });
                      },
                      child: Container(
                        height: 50,
                        width: size.width * 0.29,
                        color: LabSelect ? Styles.greenColor : Colors.white,
                        child: Center(
                            child: Text(
                          'LAB',
                          style: TextStyle(
                            color: LabSelect ? Colors.white : Colors.black,
                          ),
                        )),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          PhSelect = false;
                          LabSelect = false;
                          NurSelect = true;
                        });
                      },
                      child: Container(
                        height: 50,
                        width: size.width * 0.3,
                        decoration: BoxDecoration(
                            color: NurSelect ? Styles.greenColor : Colors.white,
                            borderRadius: const BorderRadius.only(
                              bottomRight: Radius.circular(25),
                              topRight: Radius.circular(25),
                            )),
                        child: Center(
                            child: Text(
                          'NURSING',
                          style: TextStyle(
                            color: NurSelect ? Colors.white : Colors.black,
                          ),
                        )),
                      ),
                    ),
                  ],
                )),
            Expanded(
              child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, int index) {
                    if (PhSelect == true &&
                        LabSelect == false &&
                        NurSelect == false) {
                      return PharmacyWidget(size: size);
                    } else if (PhSelect == false &&
                        LabSelect == true &&
                        NurSelect == false) {
                      return LabWidget(size: size);
                    } else if (PhSelect == false &&
                        LabSelect == false &&
                        NurSelect == true) {
                      return NursingWidget(size: size);
                    } else {
                      return const Text('');
                    }
                  }),
            )
          ],
        ),
      ),
    );
  }
}

class NursingWidget extends StatelessWidget {
  const NursingWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade400, width: 1),
          boxShadow: const [BoxShadow(blurRadius: 10, color: Colors.grey)],
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: size.height * 0.08,
                    width: size.width * 0.16,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage('assets/images/female.png'),
                            fit: BoxFit.fill),
                        border:
                            Border.all(color: Styles.primaryColor, width: 2),
                        color: Colors.white,
                        shape: BoxShape.circle),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('81425845665158587'),
                          SizedBox(
                            width: size.width * 0.18,
                          ),
                          Text(
                            '₹ 1000',
                            style: TextStyle(color: Styles.primaryColor),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.luggage,
                            size: 18,
                            color: Styles.primaryColor,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text('cancer care  (Service)'),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.calendar_month,
                            size: 18,
                            color: Styles.primaryColor,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text('05-05-2022 To 07-05-2022'),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.watch_later,
                            size: 18,
                            color: Styles.primaryColor,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text('04 : 00'),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return Dialog(
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: SizedBox(
                                height: 230,
                                child: Column(
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: size.height * 0.08,
                                          width: size.width * 0.16,
                                          decoration: BoxDecoration(
                                              image: const DecorationImage(
                                                  image: AssetImage(
                                                      'assets/images/female.png'),
                                                  fit: BoxFit.fill),
                                              border: Border.all(
                                                  color: Styles.primaryColor,
                                                  width: 2),
                                              color: Colors.white,
                                              shape: BoxShape.circle),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Column(
                                          children: [
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                Row(
                                                  children: [
                                                    Icon(
                                                      Icons.person,
                                                      size: 18,
                                                      color:
                                                          Styles.primaryColor,
                                                    ),
                                                    const SizedBox(
                                                      width: 5,
                                                    ),
                                                    const Text('Deepak Joshi'),
                                                  ],
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                Row(
                                                  children: [
                                                    Icon(
                                                      Icons.phone,
                                                      size: 18,
                                                      color:
                                                          Styles.primaryColor,
                                                    ),
                                                    const SizedBox(
                                                      width: 5,
                                                    ),
                                                    const Text('9988776644'),
                                                    const SizedBox(
                                                      width: 5,
                                                    ),
                                                    Icon(
                                                      Icons.people,
                                                      size: 18,
                                                      color:
                                                          Styles.primaryColor,
                                                    ),
                                                    const SizedBox(
                                                      width: 5,
                                                    ),
                                                    const Text('23 years'),
                                                  ],
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                Row(
                                                  children: [
                                                    Icon(
                                                      Icons.people_alt_rounded,
                                                      size: 18,
                                                      color:
                                                          Styles.primaryColor,
                                                    ),
                                                    const SizedBox(
                                                      width: 5,
                                                    ),
                                                    const Text('Self'),
                                                    const SizedBox(
                                                      width: 5,
                                                    ),
                                                    Icon(
                                                      Icons.male,
                                                      size: 18,
                                                      color:
                                                          Styles.primaryColor,
                                                    ),
                                                    const SizedBox(
                                                      width: 5,
                                                    ),
                                                    const Text('Male'),
                                                  ],
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                Row(
                                                  children: [
                                                    Icon(
                                                      Icons.calendar_month,
                                                      size: 18,
                                                      color:
                                                          Styles.primaryColor,
                                                    ),
                                                    const SizedBox(
                                                      width: 5,
                                                    ),
                                                    const Text(
                                                      '06-10-1998',
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                Row(
                                                  children: [
                                                    Icon(
                                                      Icons.location_on,
                                                      size: 18,
                                                      color:
                                                          Styles.primaryColor,
                                                    ),
                                                    const SizedBox(
                                                      width: 5,
                                                    ),
                                                    const Text(
                                                        'S.c.o-135,Sahibzada Ajit Singh\nNagar,Sahibzada Ajit Singh\nNagar, Punjab'),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                        child: Container(
                                          height: 50,
                                          width: 150,
                                          decoration: BoxDecoration(
                                              color: Styles.primaryColor,
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: Center(
                                            child: Text('DONE',
                                                style: Styles.whiteText
                                                    .copyWith(
                                                        fontWeight:
                                                            FontWeight.bold)),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text(
                        'Patient detail',
                        style: TextStyle(
                            color: Styles.primaryColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    height: size.height * 0.07,
                    width: size.width * 0.35,
                    decoration: BoxDecoration(
                        color: Styles.greyColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        'TRACK ORDER',
                        style: Styles.whiteText,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class LabWidget extends StatelessWidget {
  const LabWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade400, width: 1),
          boxShadow: const [BoxShadow(blurRadius: 10, color: Colors.grey)],
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: size.height * 0.1,
                    width: size.width * 0.18,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/img3.jpg'),
                            fit: BoxFit.fill),
                        color: Colors.white,
                        shape: BoxShape.circle),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('81425845665158587'),
                          SizedBox(
                            width: size.width * 0.18,
                          ),
                          Text(
                            '₹ 500',
                            style: TextStyle(color: Styles.primaryColor),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.calendar_month,
                            size: 18,
                            color: Styles.primaryColor,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text('2022-12-13'),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.watch_later,
                            size: 18,
                            color: Styles.primaryColor,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            '19:00 PM - 19:20 PM',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.location_on,
                            size: 18,
                            color: Styles.primaryColor,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            'S.c.o-135,Sahibzada Ajit Singh\nNagar,Sahibzada Ajit Singh\nNagar, Punjab',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: InkWell(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return const TrackOrderScreen();
                    }));
                  },
                  child: Container(
                    height: size.height * 0.07,
                    width: size.width * 0.35,
                    decoration: BoxDecoration(
                        color: Styles.primaryColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        'TRACK ORDER',
                        style: Styles.whiteText,
                      ),
                    ),
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

class PharmacyWidget extends StatelessWidget {
  const PharmacyWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade400, width: 1),
          boxShadow: const [BoxShadow(blurRadius: 10, color: Colors.grey)],
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: size.height * 0.1,
                    width: size.width * 0.18,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/office.png'),
                            fit: BoxFit.fill),
                        color: Colors.white,
                        shape: BoxShape.circle),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('81425845665158587'),
                          SizedBox(
                            width: size.width * 0.18,
                          ),
                          Text(
                            '₹ 2400',
                            style: TextStyle(color: Styles.primaryColor),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.location_on,
                            size: 18,
                            color: Styles.primaryColor,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            'S.c.o-135,Sahibzada Ajit Singh\nNagar,Sahibzada Ajit Singh\nNagar, Punjab',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: DottedBorder(
                  dashPattern: const [5, 1],
                  borderType: BorderType.RRect,
                  strokeWidth: 2,
                  radius: const Radius.circular(10),
                  color: Styles.primaryColor,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(12)),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return const PharmacyViewDetail();
                        }));
                      },
                      child: SizedBox(
                        height: size.height * 0.06,
                        width: size.width * 0.35,
                        child: Center(
                          child: Text(
                            'VIEW DETAILS',
                            style: TextStyle(color: Styles.primaryColor),
                          ),
                        ),
                        // decoration: BoxDecoration(
                        //   color: Colors.red,
                        //   borderRadius: BorderRadius.circular(10)
                        // ),
                      ),
                    ),
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
