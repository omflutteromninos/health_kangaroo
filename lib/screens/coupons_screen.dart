import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:hk/utils/app_styles.dart';
class CouponsScreen extends StatefulWidget {
  const CouponsScreen({Key? key}) : super(key: key);

  @override
  State<CouponsScreen> createState() => _CouponsScreenState();
}

class _CouponsScreenState extends State<CouponsScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          title: Text('Coupons And Offers'),
          centerTitle: true,
          bottom: TabBar(
            isScrollable: true,
            labelColor: Styles.primaryColor,
            labelStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),
            unselectedLabelColor: Colors.black,
            indicatorColor: Styles.primaryColor,
              tabs: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text('MEDICINE'),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text('DOCTOR'),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text('HOSPITAL'),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text('LAB'),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text('NURSING'),
            ),
          ]),
        ),
        body: TabBarView(
          children: [
            TabbarWidget(size: size, length: 2,),
            TabbarWidget(size: size, length: 6,),
            TabbarWidget(size: size, length: 1,),
            TabbarWidget(size: size, length: 2,),
            TabbarWidget(size: size, length: 3,),



          ],
        ),
      ),
    );
  }
}

class TabbarWidget extends StatelessWidget {
  const TabbarWidget({
    Key? key,
    required this.size,
    required this.length,
  }) : super(key: key);

  final Size size;
  final int length;

  @override
  Widget build(BuildContext context) {
    return Expanded(child:ListView.builder(
      itemCount: length,
        itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(spreadRadius: 2,color: Colors.red.shade800)
                      ]
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CircleAvatar(

                              backgroundImage: NetworkImage('https://www.shutterstock.com/image-vector/50-coupon-promotion-sale-website-260nw-2039676860.jpg'),
                            ),
                            Text('Coupon Code valued at 50 or 10% at health\nkangaroo',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: size.width*0.04
                              )
                            )
                          ],
                        ),
                        SizedBox(height: size.height*0.02,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Expire',style: Styles.mediumText.copyWith(color: Colors.grey),),
                                Text('2022-12-30'),
                                Text('Terms & conditions apply',style: Styles.smallText.copyWith(color: Styles.primaryColor),),
                              ],
                            ),
                            DottedBorder(
                              dashPattern: [10,5],
                              borderType: BorderType.RRect,
                              strokeWidth: 2,
                              radius: Radius.circular(10),
                              color: Styles.primaryColor,
                              child: ClipRRect(
                                borderRadius: BorderRadius.all(Radius.circular(12)),
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Text('PHAR4233',style: TextStyle(fontWeight: FontWeight.bold),),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: size.height*0.015,),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        }
    ));
  }
}
