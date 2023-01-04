
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hk/screens/my_order_status_screen.dart';
import 'package:hk/utils/app_styles.dart';

class MyConsult extends StatefulWidget {
  const MyConsult({Key? key}) : super(key: key);

  @override
  State<MyConsult> createState() => _MyConsultState();
}

class _MyConsultState extends State<MyConsult> {
  bool upcomingSelect = true;
  bool currentSelect = false;
  bool historySelect = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: const Text(''),
        centerTitle: true,
        elevation: 0,
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        title: const Text('My Consultations'),
        actions: [
          InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Icon(
                  Icons.highlight_remove,
                  color: Styles.greenColor,
                ),
              ))
        ],
      ),
      body: Container(
        width: size.width,
        height: size.height*0.89,
        child: Column(
          children: [
            InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return MyOrderStatusScreen();
                }));
              },
              child: Container(
                height: size.height*0.065,
                width: size.width*0.7,
                decoration: BoxDecoration(
                  color: Styles.primaryColor,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Center(
                  child: Text('My Order Status',style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                  fontSize: 18),),
                ),
              ),
            ),
            SizedBox(height: 10,),
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
                          upcomingSelect = true;
                          currentSelect = false;
                          historySelect = false;
                        });
                      },
                      child: Container(
                        height: 50,
                        width: size.width*0.3,
                        decoration: BoxDecoration(
                            color:upcomingSelect?  Colors.green:Colors.white,
                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25),topLeft:  Radius.circular(25),)
                        ),
                        child: Center(child: Text('UPCOMING',style: TextStyle( color:upcomingSelect?  Colors.white:Colors.black,),)),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        setState(() {
                          upcomingSelect = false;
                          currentSelect = true;
                          historySelect = false;
                        });
                      },
                      child: Container(
                        height: 50,
                        width: size.width*0.29,
                        color:currentSelect?  Colors.green:Colors.white,
                        child: Center(child: Text('CURRENT',style: TextStyle( color:currentSelect?  Colors.white:Colors.black,),)),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        setState(() {
                          upcomingSelect = false;
                          currentSelect = false;
                          historySelect = true;
                        });
                      },
                      child: Container(
                        height: 50,
                        width: size.width*0.3,
                        decoration: BoxDecoration(
                            color:historySelect?  Colors.green:Colors.white,
                            borderRadius: BorderRadius.only(bottomRight: Radius.circular(25),topRight:  Radius.circular(25),)
                        ),
                        child: Center(child: Text('HISTORY',style: TextStyle( color:historySelect?  Colors.white:Colors.black,),)),
                      ),
                    ),
                  ],
                )
            ),
            SizedBox(height: 10,),
            Expanded(
              child: ListView.builder(
                  itemCount: 1,
                  itemBuilder: (context,int index){
                    if(upcomingSelect==true && currentSelect==false && historySelect==false){
                      return UpcomingWidget();
                    }
                    else if(upcomingSelect==false && currentSelect==true && historySelect==false){
                      return CurrentWidget(size: size);
                    }
                    else if(upcomingSelect==false && currentSelect==false && historySelect==true){
                      return HistoryWidget(size: size,);
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
    );
  }
}

class HistoryWidget extends StatelessWidget {
  HistoryWidget({
    Key? key,
    required this.size,
  }) : super(key: key);
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15,left: 15,top: 5,bottom: 5),
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
            children: [
              Gap(10),
              TextWidgetHistory(leftText: 'Name :', rightText: 'Deepak Joshi',),
              TextWidgetHistory(leftText: 'Price :', rightText: '₹ 300',),
              TextWidgetHistory(leftText: 'Age :', rightText: '24 Years',),
              TextWidgetHistory(leftText: 'Next Appointment :', rightText: '30-12-2022',),
              TextWidgetHistory(leftText: 'Appointment ID :', rightText: '45548545747896545',),
              Gap(15),
              DottedBorder(
                radius: Radius.circular(10),
                strokeWidth: 2,
                  borderType: BorderType.RRect,
                  dashPattern: [6,1],
                  color: Styles.primaryColor,
                  child: Container(
                    height: size.height*0.06,width: size.width,
                    decoration: BoxDecoration(
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(width: 5,),
                            Text('DOWNLOAD',style: TextStyle(color: Styles.primaryColor,fontWeight: FontWeight.w600),),
                            Icon(Icons.picture_as_pdf,color: Styles.primaryColor,)
                          ],
                        ),
                      ),
                    ),
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TextWidgetHistory extends StatelessWidget {
  TextWidgetHistory({
    Key? key,
    required this.leftText,
    required this.rightText,

  }) : super(key: key);
  String leftText;
  String rightText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(leftText,
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

class CurrentWidget extends StatelessWidget {
  const CurrentWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Styles.bgColor.withOpacity(0.5),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('03, January 2023'),
              ),
            ],
          ),
        ),
        Container(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(blurRadius: 10,color: Colors.grey)
                  ]
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 37,
                          backgroundColor: Styles.primaryColor,
                          child: CircleAvatar(
                            radius: 35,
                            backgroundImage: NetworkImage('https://img.freepik.com/free-vector/doctor-character-background_1270-84.jpg?w=2000'),
                          ),
                        ),
                        Gap(10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: size.width*0.6,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Deepak Joshi'),
                                  Text('₹ 300',style: TextStyle(color: Styles.primaryColor),),
                                ],
                              ),
                            ),
                            Gap(10),
                            Row(
                              children: [
                                Icon(Icons.watch_later_outlined,color: Styles.primaryColor,size: 16,),
                                Gap(5),
                                Text('10:10 AM - 10:30 AM',style: TextStyle(color: Styles.greyColor),)
                              ],
                            ),
                            Gap(5),
                            Row(
                              children: [
                                Icon(Icons.location_on,color: Styles.primaryColor,size: 16,),
                                Gap(5),
                                Text('Sahibzada Ajit Singh Nagar',style: TextStyle(color: Styles.greyColor),)
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    Gap(10),
                    Row(
                      children: [
                        Text('Language : hindi',style: TextStyle(fontSize: 13),),
                        Icon(Icons.stacked_line_chart,color: Styles.primaryColor,size: 13,),
                        Text('Appointment Pending',style: TextStyle(color: Styles.primaryColor,fontSize: 13,fontWeight: FontWeight.w600),)
                      ],
                    ),
                    Gap(15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.message,color: Styles.primaryColor,size: 30,),
                        Gap(10),
                        Icon(Icons.videocam,color: Styles.primaryColor,size: 35,),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class UpcomingWidget extends StatelessWidget {
  const UpcomingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          color: Styles.bgColor.withOpacity(0.5),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('03, January 2023'),
              ),
            ],
          ),
        ),
        Container(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(blurRadius: 10,color: Colors.grey)
                ]
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 37,
                          backgroundColor: Styles.primaryColor,
                          child: CircleAvatar(
                            radius: 35,
                            backgroundImage: NetworkImage('https://img.freepik.com/free-vector/doctor-character-background_1270-84.jpg?w=2000'),
                          ),
                        ),
                        Gap(10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: size.width*0.6,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Deepak Joshi'),
                                  Text('₹ 300',style: TextStyle(color: Styles.primaryColor),),
                                ],
                              ),
                            ),
                            Gap(10),
                            Row(
                              children: [
                                Icon(Icons.watch_later_outlined,color: Styles.primaryColor,size: 16,),
                                Gap(5),
                                Text('10:10 AM - 10:30 AM',style: TextStyle(color: Styles.greyColor),)
                              ],
                            ),
                            Gap(5),
                            Row(
                              children: [
                                Icon(Icons.location_on,color: Styles.primaryColor,size: 16,),
                                Gap(5),
                                Text('Sahibzada Ajit Singh Nagar',style: TextStyle(color: Styles.greyColor),)
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    Gap(10),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text('Language : hindi',style: TextStyle(fontSize: 12),),
                    ),
                    Gap(10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('seconds remaining: 45',style: TextStyle(color: Colors.grey),),
                        Container(
                          height: 30,
                          width: size.width*0.25,
                          decoration: BoxDecoration(
                            color: Colors.red.shade800,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Text('Cancel',style: TextStyle(fontWeight: FontWeight.w600,color: Colors.white),),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
