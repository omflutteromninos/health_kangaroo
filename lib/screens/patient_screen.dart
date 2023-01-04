import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hk/screens/booking_option_screen.dart';
import 'package:hk/widgets/saved_textfield_widget.dart';
import 'package:iphone_has_notch/iphone_has_notch.dart';

import '../utils/app_styles.dart';

class PatientScreen extends StatefulWidget {
  const PatientScreen({super.key});

  @override
  State<PatientScreen> createState() => _PatientScreenState();
}

class _PatientScreenState extends State<PatientScreen> {
  String? gender;
  String? haveInsurance;
  bool _isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Styles.greenColor,
          toolbarHeight: IphoneHasNotch.hasNotch ? -12 : 0,

          // toolbarHeight: Theme.of(context).platform == TargetPlatform.iOS ?  0 : 0,
          elevation: 0,
        ),
        body: Scaffold(
          appBar: AppBar(
            leading: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BookingOptionScreen(),
                      ));
                },
                child: Icon(Icons.adaptive.arrow_back)),
            centerTitle: true,
            elevation: 1,
            foregroundColor: Colors.black,
            backgroundColor: Colors.white,
            title: const Text('Patient'),
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 20,
              ),
              child: Column(children: [
                TextFieldWidget('Name', 'Deepak Joshi'),
                const Gap(15),
                TextFieldWidget('Father Name', 'Anil Joshi'),
                const Gap(15),
                TextFieldWidget('Date of Birth', '06-10-1998'),
                const Gap(15),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Gender:-',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      width: MediaQuery.of(context).size.width * 0.35,
                      child: RadioListTile(
                        contentPadding: EdgeInsets.zero,
                        toggleable: false,
                        title: const Text("Male"),
                        value: "male",
                        groupValue: gender,
                        onChanged: (value) {
                          setState(() {
                            gender = value.toString();
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: RadioListTile(
                        toggleable: false,
                        contentPadding: EdgeInsets.zero,
                        title: const Text("Female"),
                        value: "female",
                        groupValue: gender,
                        onChanged: (value) {
                          setState(() {
                            gender = value.toString();
                          });
                        },
                      ),
                    ),
                  ],
                ),
                TextFieldWidget('Mobile Number', '9874561230'),
                const Gap(15),
                TextFieldWidget('Email Id', 'joshi007@gmail.com'),
                const Gap(15),
                TextFieldWidget('Address', ''),
                const Gap(15),
                Row(
                  children: [
                    const Text(
                      'Have Insurance ?',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                    ),
                    Row(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          width: MediaQuery.of(context).size.width * 0.3,
                          child: RadioListTile(
                            contentPadding: EdgeInsets.zero,
                            toggleable: false,
                            title: const Text("Yes"),
                            value: "yes",
                            groupValue: haveInsurance,
                            onChanged: (value) {
                              setState(() {
                                haveInsurance = value.toString();
                                _isVisible = !_isVisible;
                              });
                            },
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.25,
                          child: RadioListTile(
                            toggleable: false,
                            contentPadding: EdgeInsets.zero,
                            title: const Text("No"),
                            value: "no",
                            groupValue: haveInsurance,
                            onChanged: (value) {
                              setState(() {
                                haveInsurance = value.toString();
                                _isVisible = false;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Visibility(
                  visible: _isVisible,
                  child: Column(
                    children: [
                      TextFieldWidget('Insurance No.', ''),
                      const Gap(15),
                      TextFieldWidget('Company Name', ''),
                      const Gap(15),
                      TextFieldWidget('Issue Date', ''),
                      const Gap(15),
                      TextFieldWidget('Expiry Date', ''),
                      const Gap(15),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Insurance Image',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.normal),
                        ),
                      ),
                      const Gap(10),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Icon(
                          Icons.add_circle,
                          size: 30,
                          color: Styles.greenColor,
                        ),
                      )
                    ],
                  ),
                ),
                const Gap(20),
                Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Styles.greenColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: const Text(
                    'Continue',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                const Gap(20),
              ]),
            ),
          ),
        )
    );

  }
}
