import 'package:flutter/material.dart';

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
    );
  }
}
