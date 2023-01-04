import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hk/screens/bottom_nav.dart';
import 'package:iphone_has_notch/iphone_has_notch.dart';

import '../utils/app_styles.dart';
class BeforeTabBarScreen extends StatefulWidget {
  const BeforeTabBarScreen({Key? key}) : super(key: key);

  @override
  State<BeforeTabBarScreen> createState() => _BeforeTabBarScreenState();
}

class _BeforeTabBarScreenState extends State<BeforeTabBarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Styles.greenColor,
        toolbarHeight: IphoneHasNotch.hasNotch ? -12 : 0,

        // toolbarHeight: Theme.of(context).platform == TargetPlatform.iOS ?  0 : 0,
        elevation: 0,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: PageView.builder(
          itemCount: 1,
            itemBuilder: (context,index){
          return BottomNav();
        }),
      ),
    );
  }
}
