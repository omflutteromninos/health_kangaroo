import 'package:flutter/material.dart';
import 'package:iphone_has_notch/iphone_has_notch.dart';
import 'package:table_calendar/table_calendar.dart';

import '../utils/app_styles.dart';

class ReffrelAmbulance extends StatefulWidget {
  const ReffrelAmbulance({Key? key}) : super(key: key);

  @override
  State<ReffrelAmbulance> createState() => _ReffrelAmbulanceState();
}

class _ReffrelAmbulanceState extends State<ReffrelAmbulance> {
  CalendarFormat calendarFormat = CalendarFormat.month;
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
            body: Center(
              child: Column(
                children: [
                  Container(
                    height: 25,
                    color: Styles.greenColor,
                  ),
                  Container(
                    decoration: const BoxDecoration(color: Colors.white, boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 5.0,
                      ),
                    ]),
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
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Select Date And Time For Ambulance',
                            style: Styles.mediumText.copyWith(color: Styles.greenColor),
                          ),
                        ),
                        TableCalendar(
                            pageJumpingEnabled: true,
                            focusedDay: DateTime.now(),
                            firstDay: DateTime.utc(2021),
                            lastDay: DateTime.utc(2030)),
                      ],
                    ),
                  ),
                ],
              ),
            ))
    );
  }
}
