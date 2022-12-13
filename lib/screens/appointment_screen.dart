import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hk/utils/app_styles.dart';
import 'package:hk/widgets/appointment_card_widget.dart';
import 'package:hk/widgets/left_heading_widget.dart';

class AppointmentScreen extends StatefulWidget {
  const AppointmentScreen({super.key});

  @override
  State<AppointmentScreen> createState() => _AppointmentScreenState();
}

class _AppointmentScreenState extends State<AppointmentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            color: Styles.bgColor,
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Column(
                  children: [
                    const Gap(30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(
                            Icons.arrow_back,
                            size: 30,
                          ),
                        ),
                        Row(
                          children: const [
                            Text(
                              'Select Location',
                              style: TextStyle(
                                  fontWeight: FontWeight.normal, fontSize: 20),
                            ),
                            Icon(
                              Icons.arrow_drop_down,
                              size: 30,
                            )
                          ],
                        ),
                        const Text('  ')
                      ],
                    ),
                  ],
                ),
                const Gap(20),
                Container(
                  width: MediaQuery.of(context).size.width * 0.85,
                  padding: const EdgeInsets.all(8),
                  height: 50,
                  decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                            color: Color.fromARGB(61, 0, 0, 0), blurRadius: 6)
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)),
                  child: const TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search_rounded),
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none))),
                ),
                const Gap(20),
                LeftHeading('Popular Specialities'),
                const Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppointmentCardWidget(
                        'https://images.unsplash.com/photo-1666214278797-b2cc1b12be76?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',
                        'Select Specialist'),
                    AppointmentCardWidget(
                        'https://images.unsplash.com/photo-1666214278797-b2cc1b12be76?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',
                        'Endocrinologists'),
                    AppointmentCardWidget(
                        'https://images.unsplash.com/photo-1666214278797-b2cc1b12be76?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',
                        'Emergency Medicine'),
                  ],
                ),
                const Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppointmentCardWidget(
                        'https://images.unsplash.com/photo-1666214278797-b2cc1b12be76?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',
                        'Gastroenterologists'),
                    AppointmentCardWidget(
                        'https://images.unsplash.com/photo-1666214278797-b2cc1b12be76?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',
                        'Hematologists'),
                    AppointmentCardWidget(
                        'https://images.unsplash.com/photo-1666214278797-b2cc1b12be76?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',
                        'Oncologists'),
                  ],
                ),
                const Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppointmentCardWidget(
                        'https://images.unsplash.com/photo-1666214278797-b2cc1b12be76?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',
                        'Ophthalmologists'),
                    AppointmentCardWidget(
                        'https://images.unsplash.com/photo-1666214278797-b2cc1b12be76?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',
                        'Pediatritcians'),
                    AppointmentCardWidget(
                        'https://images.unsplash.com/photo-1666214278797-b2cc1b12be76?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',
                        'Psychiatrists'),
                  ],
                ),
                const Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppointmentCardWidget(
                        'https://images.unsplash.com/photo-1666214278797-b2cc1b12be76?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',
                        'Heart Specialists'),
                    AppointmentCardWidget(
                        'https://images.unsplash.com/photo-1666214278797-b2cc1b12be76?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',
                        'Pediatritcians'),
                    AppointmentCardWidget(
                        'https://images.unsplash.com/photo-1666214278797-b2cc1b12be76?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',
                        'Pediatritcians'),
                  ],
                ),
              ],
            )),
      ),
    );
  }
}
