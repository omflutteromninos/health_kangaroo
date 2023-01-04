import 'package:flutter/material.dart';
import 'package:hk/screens/bmi_result_screen.dart';
import 'package:hk/utils/app_styles.dart';
import 'package:iphone_has_notch/iphone_has_notch.dart';

class BmiCalculator extends StatefulWidget {
  const BmiCalculator({Key? key}) : super(key: key);

  @override
  State<BmiCalculator> createState() => _BmiCalculatorState();
}

class _BmiCalculatorState extends State<BmiCalculator> {
  double height = 165;
  int weight = 50;
  int age = 25;
  double result = 0;
  bool maleClick = false;
  bool femaleClick = false;
  String maleFemale = '';
  String description = '';

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Styles.greenColor,
          toolbarHeight: IphoneHasNotch.hasNotch ? -12 : 0,

          // toolbarHeight: Theme.of(context).platform == TargetPlatform.iOS ?  0 : 0,
          elevation: 0,
        ),
        body: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            elevation: 0,
            foregroundColor: Colors.black,
            backgroundColor: Styles.bgColor,
            title: const Text('Bmi Calculator'),
          ),
          body: SafeArea(
            child: Container(
              color: Styles.bgColor,
              height: size.height,
              width: size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            maleClick = true;
                            femaleClick = false;
                            maleFemale = 'Male';
                          });
                        },
                        child: Container(
                          height: size.height * 0.22,
                          width: size.width * 0.4,
                          decoration: BoxDecoration(
                            color: maleClick ? Styles.primaryColor : Colors.black,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Icon(
                                Icons.man,
                                color: Colors.white,
                                size: 100,
                              ),
                              Text(
                                'Male',
                                style: Styles.largeWhiteText,
                              )
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            maleClick = false;
                            femaleClick = true;
                            maleFemale = 'Female';
                          });
                        },
                        child: Container(
                          height: size.height * 0.22,
                          width: size.width * 0.4,
                          decoration: BoxDecoration(
                            color: femaleClick ? Styles.primaryColor : Colors.black,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Icon(
                                Icons.girl,
                                color: Colors.white,
                                size: 100,
                              ),
                              Text(
                                'Female',
                                style: Styles.largeWhiteText,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: size.height * 0.22,
                    width: size.width * 0.85,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.6),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Height',
                          style: Styles.largeWhiteText
                              .copyWith(color: Styles.primaryColor),
                        ),
                        Text(
                          '${height.toInt()}     cm',
                          style: Styles.largeWhiteText
                              .copyWith(color: Styles.primaryColor),
                        ),
                        Slider(
                            value: height,
                            min: 0,
                            max: 300,
                            onChanged: (double newheight) {
                              setState(() {
                                height = newheight;
                              });
                            })
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: size.height * 0.22,
                        width: size.width * 0.4,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.6),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Weight',
                              style: Styles.largeWhiteText
                                  .copyWith(color: Styles.primaryColor),
                            ),
                            Text(
                              '$weight  kg',
                              style: Styles.largeWhiteText
                                  .copyWith(color: Styles.primaryColor),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                  child: CircleAvatar(
                                    radius: 15,
                                    backgroundColor: Colors.black.withOpacity(0.2),
                                    child: const Icon(
                                      Icons.remove,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Icon(
                                        Icons.add_circle,
                                        color: Colors.black.withOpacity(0.8),
                                        size: 30,
                                      )),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: size.height * 0.22,
                        width: size.width * 0.4,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.6),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Age',
                              style: Styles.largeWhiteText
                                  .copyWith(color: Styles.primaryColor),
                            ),
                            Text(
                              '$age  years',
                              style: Styles.largeWhiteText
                                  .copyWith(color: Styles.primaryColor),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                  child: CircleAvatar(
                                    radius: 15,
                                    backgroundColor: Colors.black.withOpacity(0.2),
                                    child: const Icon(
                                      Icons.remove,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Icon(
                                        Icons.add_circle,
                                        color: Colors.black.withOpacity(0.8),
                                        size: 30,
                                      )),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        result = weight / ((height / 100) * (height / 100));
                        if (result < 18.5) {
                          description = 'Under Weight';
                        }
                        if (result >= 18.5 && result <= 24.9) {
                          description = 'Normal';
                        } else if (result >= 25 && result <= 29.9) {
                          description = 'Over Weight';
                        } else if (result >= 30 && result <= 34.9) {
                          description = 'Obesity(Class-1)';
                        } else if (result >= 35 && result <= 39.9) {
                          description = 'Obesity(Class-2)';
                        } else if (result > 40) {
                          description = 'Extreme Obesity';
                        }
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return BmiResultScreen(
                            result: result,
                            maleFemale: maleFemale,
                            des: description,
                          );
                        }));
                      });
                    },
                    child: Container(
                      height: size.height * 0.05,
                      width: size.width * 0.89,
                      decoration: BoxDecoration(
                          color: Styles.primaryColor,
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Text(
                          'CALCULATE YOUR BMI',
                          style: Styles.largeWhiteText.copyWith(fontSize: 18),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        )
    );

  }
}
