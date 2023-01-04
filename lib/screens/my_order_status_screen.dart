import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hk/screens/setting_my_consultation_Screen.dart';
import 'package:iphone_has_notch/iphone_has_notch.dart';

import '../utils/app_styles.dart';
class MyOrderStatusScreen extends StatefulWidget {
  const MyOrderStatusScreen({Key? key}) : super(key: key);

  @override
  State<MyOrderStatusScreen> createState() => _MyOrderStatusScreenState();
}

class _MyOrderStatusScreenState extends State<MyOrderStatusScreen> {
  bool reshSelect = true;
  bool rejSelect = false;
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
          backgroundColor: Styles.bgColor,
          appBar: AppBar(
            leading: const Text(''),
            centerTitle: true,
            elevation: 0,
            foregroundColor: Colors.black,
            backgroundColor: Colors.white,
            title: const Text('My Order Status'),
          ),
          body: Container(
            width: size.width,
            height: size.height*0.89,
            child: Column(
              children: [
                Container(
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          height: 50,
                          width: size.width*0.9,
                          decoration: BoxDecoration(
                              border: Border.all(width: 1,color: Styles.primaryColor),
                              borderRadius: BorderRadius.circular(25)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: (){
                                  setState(() {
                                    reshSelect = true;
                                    rejSelect = false;
                                  });
                                },
                                child: Container(
                                  height: 50,
                                  width: size.width*0.445,
                                  decoration: BoxDecoration(
                                      color:reshSelect?  Colors.green:Colors.white,
                                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25),topLeft:  Radius.circular(25),)
                                  ),
                                  child: Center(child: Text('RESCHEDULED',style: TextStyle( color:reshSelect?  Colors.white:Colors.black,),)),
                                ),
                              ),
                              InkWell(
                                onTap: (){
                                  setState(() {
                                    reshSelect = false;
                                    rejSelect = true;
                                  });
                                },
                                child: Container(
                                  height: 50,
                                  width: size.width*0.445,
                                  decoration: BoxDecoration(
                                      color:rejSelect?  Colors.green:Colors.white,
                                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(25),topRight:  Radius.circular(25),)
                                  ),
                                  child: Center(child: Text('REJECTED',style: TextStyle( color:rejSelect?  Colors.white:Colors.black,),)),
                                ),
                              ),
                            ],
                          )
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                      itemCount: 2,
                      itemBuilder: (context,int index){
                        if(reshSelect==true && rejSelect==false){
                          return RescheduleWidget();
                        }
                        else if(reshSelect==false && rejSelect==true){
                          return RejectedWidget();
                        }
                        else{
                          return Text('');
                        }

                      }

                  ),
                )

              ],
            ),

          ),
        )
    );
  }
}

class RejectedWidget extends StatelessWidget {
  const RejectedWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(blurRadius: 10,color: Colors.grey)
            ]
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap(10),
              TextWidgetReject(leftText: 'Name', rightText: 'Deepak Joshi',),
              TextWidgetReject(leftText: 'Phone', rightText: 'Demo Phone',),
              TextWidgetReject(leftText: 'Price', rightText: '₹ 300',),
              TextWidgetReject(leftText: 'Age', rightText: '24 Years',),
              TextWidgetReject(leftText: 'Date', rightText: '30-12-2022',),
              TextWidgetReject(leftText: 'Slot', rightText: '17:10 PM - 17:20 PM',),
              TextWidgetReject(leftText: 'Doctor', rightText: 'Dr. Rajveer',),
              TextWidgetReject(leftText: 'Appointment ID', rightText: '45548545747896545',),
              Gap(20),
              Text('Rejected Reason :',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.red.shade900,
                  fontSize: 16
                ),
              ),
              Gap(10),
            ],
          ),
        ),
      ),
    );
  }
}

class TextWidgetReject extends StatelessWidget {
  TextWidgetReject({
    Key? key,
    required this.leftText,
    required this.rightText,

  }) : super(key: key);
  String leftText;
  String rightText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Row(
        children: [
          Text('${leftText} : ',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Styles.primaryColor,
              fontSize: 16,
            ),
          ),
          Text(rightText,
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}


class RescheduleWidget extends StatelessWidget {
  const RescheduleWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('1');
  }
}

