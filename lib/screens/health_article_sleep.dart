import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

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
        title: const Text('Sleep'),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(Icons.share),
          ),
        ],
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
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Helath Article',
                      style: TextStyle(fontSize: 20),
                    ),
                    Icon(
                      Icons.bookmark,
                      size: 32,
                      color: Colors.black38,
                    )
                  ],
                ),
                const Gap(20),
                const Text('is this hassle worth it')
              ],
            ),
          )
        ],
      )),
    );
  }
}
