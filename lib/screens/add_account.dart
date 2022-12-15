import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class AddAccountScreen extends StatefulWidget {
  const AddAccountScreen({Key? key}) : super(key: key);

  @override
  State<AddAccountScreen> createState() => _AddAccountScreenState();
}

// CODE BY DEEPAK
class _AddAccountScreenState extends State<AddAccountScreen> {
  bool maleSelected = true;
  bool femaleSelected = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          Container(
            height: 25,
            color: Styles.greenColor,
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            height: 50,
            child: Row(
              children: [
                const SizedBox(
                  width: 15,
                ),
                const Icon(Icons.arrow_back),
                const SizedBox(
                  width: 60,
                ),
                Text('Refferel Ambulance', style: Styles.mediumText)
              ],
            ),
          ),
          SizedBox(
            height: size.height - 75,
            width: size.width - 50,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text(
                    'Create linked accounts by providing the following detail',
                    style: Styles.smallText,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
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
                            color:
                                maleSelected ? Styles.greenColor : Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/images/male.jpg'),
                                radius: 30,
                              ),
                              Text(
                                'Male',
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
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/images/female.png'),
                                radius: 30,
                              ),
                              Text(
                                'Female',
                                style: TextStyle(
                                    color: femaleSelected
                                        ? Colors.white
                                        : Styles.greenColor),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  CommonTextField(texthint: 'Enter Name'),
                  CommonTextField(texthint: 'Date of Birth'),
                  CommonTextField(texthint: 'Relation'),
                  CommonTextField(texthint: 'Phone Number'),
                  CommonTextField(texthint: 'Height'),
                  CommonTextField(texthint: 'Weight'),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 13,
                        backgroundColor: Styles.greenColor,
                        child: const Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Add Profile Image',
                        style: Styles.mediumText,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 55,
                    width: 250,
                    decoration: BoxDecoration(
                        color: Styles.greenColor,
                        borderRadius: BorderRadius.circular(27.5)),
                    child: Center(
                      child: Text(
                        'ADD INSURANCE',
                        style: Styles.whiteText,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Container(
                    height: 55,
                    width: 250,
                    decoration: BoxDecoration(
                        color: Styles.greenColor,
                        borderRadius: BorderRadius.circular(27.5)),
                    child: Center(
                      child: Text(
                        'ADD INSURANCE',
                        style: Styles.whiteText,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}

// ignore: must_be_immutable
class CommonTextField extends StatelessWidget {
  CommonTextField({Key? key, required this.texthint}) : super(key: key);
  String texthint;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: texthint,
          hintStyle: Styles.graySmallText.copyWith(fontSize: 14)),
    );
  }
}
