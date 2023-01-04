import 'package:flutter/material.dart';
import 'package:iphone_has_notch/iphone_has_notch.dart';

import '../utils/app_styles.dart';
class LabMyResultsScreen extends StatefulWidget {
  const LabMyResultsScreen({Key? key}) : super(key: key);

  @override
  State<LabMyResultsScreen> createState() => _LabMyResultsScreenState();
}

class _LabMyResultsScreenState extends State<LabMyResultsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Styles.greenColor,
          toolbarHeight: IphoneHasNotch.hasNotch ? -12 : 0,

          // toolbarHeight: Theme.of(context).platform == TargetPlatform.iOS ?  0 : 0,
          elevation: 0,
        ),
        body: Container()
    );
  }
}
