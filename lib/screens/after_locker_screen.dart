import 'package:flutter/material.dart';
import 'package:iphone_has_notch/iphone_has_notch.dart';

import '../utils/app_styles.dart';

class AfterLoker extends StatefulWidget {
  const AfterLoker({Key? key}) : super(key: key);

  @override
  State<AfterLoker> createState() => _AfterLokerState();
}

class _AfterLokerState extends State<AfterLoker> {
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
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            title: const Text('Locker Opened'),
          ),
        )
    );

  }
}
