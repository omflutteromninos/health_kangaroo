import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_styles.dart';
class GeneralOrderScreen extends StatefulWidget {
  const GeneralOrderScreen({Key? key}) : super(key: key);

  @override
  State<GeneralOrderScreen> createState() => _GeneralOrderScreenState();
}

class _GeneralOrderScreenState extends State<GeneralOrderScreen> {
  bool approvedSelect = true;
  bool pendingSelect = false;
  bool rejectedSelect = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Styles.bgColor,
      appBar: AppBar(
        elevation: 0,
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
      ),
      body: Container(
        height: size.height,
        width: size.width,
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
                                approvedSelect = true;
                                pendingSelect = false;
                                rejectedSelect = false;
                              });
                            },
                            child: Container(
                              height: 50,
                              width: size.width*0.3,
                              decoration: BoxDecoration(
                                  color:approvedSelect?  Colors.green:Colors.white,
                                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25),topLeft:  Radius.circular(25),)
                              ),
                              child: Center(child: Text('APPROVED',style: TextStyle( color:approvedSelect?  Colors.white:Colors.black,),)),
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              setState(() {
                                approvedSelect = false;
                                pendingSelect = true;
                                rejectedSelect = false;
                              });
                            },
                            child: Container(
                              height: 50,
                              width: size.width*0.29,
                              color:pendingSelect?  Colors.green:Colors.white,
                              child: Center(child: Text('PENDING',style: TextStyle( color:pendingSelect?  Colors.white:Colors.black,),)),
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              setState(() {
                                approvedSelect = false;
                                pendingSelect = false;
                                rejectedSelect = true;
                              });
                            },
                            child: Container(
                              height: 50,
                              width: size.width*0.3,
                              decoration: BoxDecoration(
                                  color:rejectedSelect?  Colors.green:Colors.white,
                                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(25),topRight:  Radius.circular(25),)
                              ),
                              child: Center(child: Text('REJECTED',style: TextStyle( color:rejectedSelect?  Colors.white:Colors.black,),)),
                            ),
                          ),



                        ],
                      )
                  ),
                ],
              ),
            ),
            OnClickApprovedWidget(approvedSelect: approvedSelect),
            OnClickPendingWidget(pendingSelect: pendingSelect, size: size),
            OnClickRejectedWidget(rejectedSelect: rejectedSelect),
          ],
        ),
      ),
    );
  }
}

class OnClickRejectedWidget extends StatelessWidget {
  const OnClickRejectedWidget({
    Key? key,
    required this.rejectedSelect,
  }) : super(key: key);

  final bool rejectedSelect;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: rejectedSelect,
      child: Expanded(
          child: ListView.builder(itemBuilder: (context,index){
            return Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
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
                      TextWidgetReject(leftText: 'Address', rightText: 'mohali',),
                      TextWidgetReject(leftText: 'Quantity', rightText: '4',),
                      TextWidgetReject(leftText: 'Price', rightText: '₹ 300',),
                      TextWidgetReject(leftText: 'Order ID', rightText: '24587466544569 demo',),
                    ],
                  ),
                ),
              ),
            );
          })
      ),
    );
  }
}

class OnClickPendingWidget extends StatelessWidget {
  const OnClickPendingWidget({
    Key? key,
    required this.pendingSelect,
    required this.size,
  }) : super(key: key);

  final bool pendingSelect;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: pendingSelect,
      child: Expanded(
          child: ListView.builder(itemBuilder: (context,index){
            return Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
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
                      TextWidgetReject(leftText: 'Phone', rightText: 'Demo Phone',),
                      TextWidgetReject(leftText: 'Address', rightText: 'flana dikda',),
                      TextWidgetReject(leftText: 'Order ID', rightText: '2458746654456968844',),
                      Gap(10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: size.height*0.06,
                            width: size.width*0.4,
                            decoration: BoxDecoration(
                              color: Styles.primaryColor,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                bottomLeft: Radius.circular(8),
                              )
                            ),
                            child: Center(
                              child: Text('EDIT',style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white
                              ),
                              ),
                            ),
                          ),
                          Container(
                            height: size.height*0.06,
                            width: size.width*0.4,
                            decoration: BoxDecoration(
                              color: Styles.redColor,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(8),
                                bottomRight: Radius.circular(8),
                              )
                            ),
                            child: Center(
                              child: Text('CANCEL',style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white
                              ),
                              ),
                            ),
                          ),
                        ],
                      )

                    ],
                  ),
                ),
              ),
            );
          })
      ),
    );
  }
}

class OnClickApprovedWidget extends StatelessWidget {
  const OnClickApprovedWidget({
    Key? key,
    required this.approvedSelect,
  }) : super(key: key);

  final bool approvedSelect;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: approvedSelect,
      child: Expanded(
          child: ListView.builder(itemBuilder: (context,index){
            return Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
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
                      TextWidgetReject(leftText: 'Address', rightText: 'mohali',),
                      TextWidgetReject(leftText: 'Price', rightText: '₹ 300',),
                      TextWidgetReject(leftText: 'Order ID', rightText: '2458746654456968844',),
                    ],
                  ),
                ),
              ),
            );
          })
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