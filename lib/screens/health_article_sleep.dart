import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class HealthArticleSleep extends StatefulWidget {
  const HealthArticleSleep({super.key});

  @override
  State<HealthArticleSleep> createState() => _HealthArticleSleepState();
}

class _HealthArticleSleepState extends State<HealthArticleSleep> {
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
      body: Container(
          child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 200,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://images.unsplash.com/photo-1579684453423-f84349ef60b0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1191&q=800'),
                    fit: BoxFit.cover)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [Text('Helath Article'), Icon(Icons.bookmark)],
          )
        ],
      )),
    );
  }
}
