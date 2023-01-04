import 'package:flutter/material.dart';
import 'package:hk/utils/app_styles.dart';
import 'package:iphone_has_notch/iphone_has_notch.dart';

class BmiResultScreen extends StatefulWidget {
  BmiResultScreen(
      {Key? key,
      required this.result,
      required this.maleFemale,
      required this.des})
      : super(key: key);
  double result;
  String maleFemale;
  String des;

  @override
  State<BmiResultScreen> createState() => _BmiResultScreenState();
}

class _BmiResultScreenState extends State<BmiResultScreen> {
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
          body: Container(
            color: Styles.bgColor,
            height: size.height,
            width: size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.orangeAccent.shade200.withOpacity(0.8),
                  child: Text(
                    'i',
                    style: Styles.largeWhiteText.copyWith(fontSize: 70),
                  ),
                ),
                Container(
                  height: size.height * 0.25,
                  width: size.width * 0.85,
                  decoration: BoxDecoration(
                    boxShadow: const [BoxShadow(blurRadius: 5, color: Colors.grey)],
                    color: Colors.orangeAccent.shade200.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        widget.result.toStringAsFixed(2),
                        style: Styles.largeWhiteText.copyWith(fontSize: 35),
                      ),
                      Text(
                        widget.maleFemale,
                        style: Styles.largeWhiteText,
                      ),
                      if (widget.result < 18.5)
                        Text(
                          widget.des,
                          style: Styles.largeWhiteText,
                        )
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    return Navigator.pop(context);
                  },
                  child: Container(
                    height: size.height * 0.07,
                    width: size.width * 0.85,
                    decoration: BoxDecoration(
                        color: Styles.primaryColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        'BACK',
                        style: Styles.largeWhiteText.copyWith(fontSize: 18),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
    );

  }
}
