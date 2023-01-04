import 'package:flutter/material.dart';
import 'package:iphone_has_notch/iphone_has_notch.dart';

import '../utils/app_styles.dart';
class TrackOrderScreen extends StatefulWidget {
  const TrackOrderScreen({Key? key}) : super(key: key);

  @override
  State<TrackOrderScreen> createState() => _TrackOrderScreenState();
}

class _TrackOrderScreenState extends State<TrackOrderScreen> {
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
            elevation: 0,
            backgroundColor: Colors.white,
            title: Text('Track Order',style: Styles.largeText.copyWith(fontWeight: FontWeight.w400)),
            centerTitle: true,
            actions: [
              Icon(Icons.message,color: Styles.primaryColor,),
              SizedBox(width: 10,),
              Icon(Icons.call,color: Styles.primaryColor,),
              SizedBox(width: 10,),
            ],
          ),
        )
    );
  }
}
