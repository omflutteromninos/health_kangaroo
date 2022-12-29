import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hk/screens/add_account.dart';

import '../utils/app_styles.dart';

class AppointmentFormScreen extends StatefulWidget {
  const AppointmentFormScreen({super.key});

  @override
  State<AppointmentFormScreen> createState() => _AppointmentFormScreenState();
}

class _AppointmentFormScreenState extends State<AppointmentFormScreen> {
  bool maleSelected = false;
  bool femaleSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          foregroundColor: Colors.black,
          backgroundColor: Styles.bgColor,
          title: const Text('Appointment'),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Container(
          height: 55,
          width: 250,
          decoration: BoxDecoration(
              color: Styles.greenColor,
              borderRadius: BorderRadius.circular(27.5)),
          child: const Center(
            child: Text(
              'CONTINUE',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            color: Styles.bgColor,
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: [
                      const Image(
                        image: AssetImage('assets/images/doctors.png'),
                        height: 200,
                      ),
                      const Gap(20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/male.jpg'),
                            radius: 40,
                          ),
                          Gap(10),
                          Text(
                            'Who is this appointment for?',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                maleSelected = true;
                                femaleSelected = false;
                              });
                            },
                            child: Container(
                              height: 120,
                              width: 90,
                              decoration: BoxDecoration(
                                color: maleSelected
                                    ? Styles.greenColor
                                    : Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  const CircleAvatar(
                                    backgroundImage:
                                        AssetImage('assets/images/male.jpg'),
                                    radius: 30,
                                  ),
                                  Text(
                                    'My Self',
                                    style: TextStyle(
                                        color: maleSelected
                                            ? Colors.white
                                            : Styles.greenColor),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                femaleSelected = true;
                                maleSelected = false;
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const AddAccountScreen(),
                                    ));
                              });
                            },
                            child: Container(
                              height: 120,
                              width: 90,
                              decoration: BoxDecoration(
                                color: femaleSelected
                                    ? Styles.greenColor
                                    : Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  const CircleAvatar(
                                    backgroundImage:
                                        AssetImage('assets/images/female.png'),
                                    radius: 30,
                                  ),
                                  Text(
                                    'Add Recepient',
                                    style: TextStyle(
                                        color: femaleSelected
                                            ? Colors.white
                                            : Styles.greenColor),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      CommonTextField2(
                          heading: 'Where would you like to take assessment',
                          texthint: 'At Home'),
                      const Gap(20),
                      CommonTextField2(
                          heading: 'Care assesment for',
                          texthint: 'Deepak joshi'),
                      const Gap(20),
                      CommonTextField2(heading: 'Age', texthint: '24 years'),
                      const Gap(20),
                      CommonTextField2(heading: 'Gender', texthint: 'Male'),
                      const Gap(20),
                      CommonTextField2(heading: 'Relatiion', texthint: 'Self'),
                      const Gap(20),
                      CommonTextField2(heading: 'Height', texthint: '75.5'),
                      const Gap(20),
                      CommonTextField2(heading: 'Weight', texthint: '105'),
                      const Gap(20),
                      CommonTextField2(
                          heading: 'Date of birth', texthint: '06-10-1998'),
                      const Gap(20),
                      CommonTextField3(
                          heading: 'Spoken Language',
                          texthint: 'English',
                          sufficIcon: Icons.edit),
                      const Gap(20),
                      Container(
                        padding: const EdgeInsets.all(20),
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(blurRadius: 5, color: Colors.black12)
                            ]),
                        child: Column(children: [
                          const Image(
                            image: AssetImage('assets/images/book.jpg'),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.post_add_rounded,
                                color: Styles.greenColor,
                                size: 30,
                              ),
                              const Gap(10),
                              const Text(
                                'Any special instructions?',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                          const Gap(10),
                          Container(
                            height: 100,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: const [
                                  BoxShadow(
                                      blurRadius: 7, color: Colors.black12)
                                ],
                                borderRadius: BorderRadius.circular(5)),
                            child: const TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none),
                                hintStyle: TextStyle(color: Colors.black26),
                                hintText:
                                    'e.g My doorbell might not be working',
                              ),
                            ),
                          )
                        ]),
                      ),
                      const Gap(10),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

class CommonTextField2 extends StatelessWidget {
  CommonTextField2({
    Key? key,
    required this.heading,
    required this.texthint,
  }) : super(key: key);
  String heading;
  String texthint;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            heading,
            style: const TextStyle(color: Colors.black38),
          ),
        ),
        TextField(
          decoration: InputDecoration(
            hintText: texthint,
          ),
        ),
      ],
    );
  }
}

class CommonTextField3 extends StatelessWidget {
  CommonTextField3({
    Key? key,
    required this.heading,
    required this.texthint,
    required this.sufficIcon,
  }) : super(key: key);
  String heading;
  String texthint;
  IconData sufficIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            heading,
            style: const TextStyle(color: Colors.black38),
          ),
        ),
        TextField(
          decoration: InputDecoration(
            suffix: Icon(
              sufficIcon,
              color: Colors.black,
            ),
            hintText: texthint,
          ),
        ),
      ],
    );
  }
}
