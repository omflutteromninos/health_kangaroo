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
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        foregroundColor: Colors.black,
        backgroundColor: Styles.bgColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('Select Location'),
            Icon(Icons.arrow_drop_down),
            Text('   '),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
            color: Styles.bgColor,
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
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
