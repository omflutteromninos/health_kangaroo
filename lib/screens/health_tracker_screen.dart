import 'package:flutter/material.dart';
import 'package:hk/utils/app_styles.dart';
import 'package:iphone_has_notch/iphone_has_notch.dart';

import 'bmi_calculator_screen.dart';

class HealthTracker extends StatefulWidget {
  const HealthTracker({Key? key}) : super(key: key);

  @override
  State<HealthTracker> createState() => _HealthTrackerState();
}

class _HealthTrackerState extends State<HealthTracker> {
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
            title: const Text('Health Tracker'),
          ),
          body: Container(
            color: Styles.bgColor,
            height: size.height,
            width: size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CommonCard(
                  size: size,
                  text: 'Count Your Steps',
                  img:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSp1Gg6bKL0hO7C6RwfXbLYUMjgmp3gBkKyRBVyVto&s',
                  ontap: () {},
                ),
                CommonCard(
                  size: size,
                  text: 'Calculate Your Bmi',
                  img:
                  'https://play-lh.googleusercontent.com/oRfGPvu132cuyKZXG9Z-OoWr-OlN7VFBIw60vvkBQ2Gzv4V4VdtvpwEISJ1rv9ZzTVI',
                  ontap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return const BmiCalculator();
                    }));
                  },
                ),
                CommonCard(
                  size: size,
                  text: 'Monitor Your Heart Rate',
                  img:
                  'https://d3b6u46udi9ohd.cloudfront.net/wp-content/uploads/2022/05/20070851/Heart-Rate-min-1.jpg',
                  ontap: () {},
                ),
                CommonCard(
                  size: size,
                  text: 'See Your Heart Records',
                  img:
                  'https://apollohealthlib.blob.core.windows.net/health-library/2021/06/shutterstock_1236631984-scaled.jpg',
                  ontap: () {},
                ),
              ],
            ),
          ),
        )
    );
  }
}

class CommonCard extends StatelessWidget {
  CommonCard({
    Key? key,
    required this.size,
    required this.text,
    required this.img,
    required this.ontap,
  }) : super(key: key);

  final Size size;
  String text;
  String img;
  Function() ontap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        height: size.height * 0.2,
        width: size.width * 0.7,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(blurRadius: 10, color: Colors.grey.shade400)],
          border: Border.all(color: Styles.primaryColor, width: 1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(text),
            CircleAvatar(
              radius: 35,
              backgroundImage: NetworkImage(img),
            ),
            const SizedBox(
              height: 5,
            )
          ],
        ),
      ),
    );
  }
}
