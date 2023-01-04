import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:hk/screens/track_order_screen.dart';

import '../utils/app_styles.dart';
import 'Pharmacy_View_Detail_screen.dart';
import 'Pharmacy_order_status_screen.dart';
import 'lab_order_status_screen.dart';
import 'nursing_order_status_screen.dart';

class MyOrdersDetailScreen extends StatefulWidget {
  const MyOrdersDetailScreen({Key? key}) : super(key: key);

  @override
  State<MyOrdersDetailScreen> createState() => _MyOrdersDetailScreenState();
}

class _MyOrdersDetailScreenState extends State<MyOrdersDetailScreen> {
  bool PhSelect = true;
  bool LabSelect = false;
  bool NurSelect = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text('My Order',style: Styles.largeText.copyWith(fontWeight: FontWeight.w400)),
        centerTitle: true,
        actions: [
          InkWell(
            onTap: (){
              Navigator.pop(context);
            },
              child: Icon(Icons.highlight_remove_sharp,color: Colors.black,)),
          SizedBox(width: 10,),
        ],
      ),
      body: Container(
        width: size.width,
        height: size.height*0.89,
        child: Column(
          children: [
            Visibility(
              visible: PhSelect,
              child: InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context){
                    return PharmacyOrderScreen();
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
                    child: Text('Pharmacy Order Status',style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 18),),
                  ),
                ),
              ),
            ),
            Visibility(
              visible: LabSelect,
              child: InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context){
                    return const LabOrderStatusScreen();
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
                    child: Text('Lab Order Status',style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 18),),
                  ),
                ),
              ),
            ),
            Visibility(
              visible: NurSelect,
              child: InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context){
                    return NursingOrderStatusScreen();
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
                    child: Text('Nursing Order Status',style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 18),),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 50,
              width: size.width*0.9,
              decoration: BoxDecoration(
                border: Border.all(width: 1,color: Styles.primaryColor),
                  color: Colors.white,
                borderRadius: BorderRadius.circular(25)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: (){
                      setState(() {
                        PhSelect = true;
                        LabSelect = false;
                        NurSelect = false;
                      });
                    },
                    child: Container(
                        height: 50,
                        width: size.width*0.3,
                        decoration: BoxDecoration(
                            color:PhSelect?  Colors.green:Colors.white,
                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25),topLeft:  Radius.circular(25),)
                        ),
                        child: Center(child: Text('PHARMACY',style: TextStyle( color:PhSelect?  Colors.white:Colors.black,),)),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      setState(() {
                        PhSelect = false;
                        LabSelect = true;
                        NurSelect = false;
                      });
                    },
                    child: Container(
                        height: 50,
                        width: size.width*0.29,
                        color:LabSelect?  Colors.green:Colors.white,
                      child: Center(child: Text('LAB',style: TextStyle( color:LabSelect?  Colors.white:Colors.black,),)),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      setState(() {
                        PhSelect = false;
                        LabSelect = false;
                        NurSelect = true;
                      });
                    },
                    child: Container(
                        height: 50,
                        width: size.width*0.3,
                        decoration: BoxDecoration(
                            color:NurSelect?  Colors.green:Colors.white,
                            borderRadius: BorderRadius.only(bottomRight: Radius.circular(25),topRight:  Radius.circular(25),)
                        ),
                      child: Center(child: Text('NURSING',style: TextStyle( color:NurSelect?  Colors.white:Colors.black,),)),
                    ),
                  ),
                ],
              )
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                  itemBuilder: (context,int index){
                if(PhSelect==true && LabSelect==false && NurSelect==false){
                  return PharmacyWidget(size: size);
                }
                else if(PhSelect==false && LabSelect==true && NurSelect==false){
                  return LabWidget(size: size);
                }
                else if(PhSelect==false && LabSelect==false && NurSelect==true){
                  return NursingWidget(size: size);
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

class NursingWidget extends StatelessWidget {
  const NursingWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade400,width: 1),
          boxShadow: [
            BoxShadow(blurRadius: 10,color: Colors.grey)
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width: 10,),
                  Container(
                    height: size.height*0.08,
                    width: size.width*0.16,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/female.png'),fit:BoxFit.fill
                      ),
                      border: Border.all(color: Styles.primaryColor,width: 2),
                      color: Colors.white,
                      shape: BoxShape.circle
                    ),
                  ),
                  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('81425845665158587'),
                          SizedBox(width: size.width*0.1,),
                          Text('₹ 1000',style: TextStyle(color: Styles.primaryColor),),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Icon(Icons.luggage,size: 18,color: Styles.primaryColor,),
                          SizedBox(width: 5,),
                          Text('cancer care  (Service)'),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Icon(Icons.calendar_month,size: 18,color: Styles.primaryColor,),
                          SizedBox(width: 5,),
                          Text('05-05-2022 To 07-05-2022'),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.watch_later,size: 18,color: Styles.primaryColor,),
                          SizedBox(width: 5,),
                          Text('04 : 00'),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: (){
                      showDialog(
                          context: context, builder: (context) {
                            return Dialog(
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Container(
                                  height: 230,
                                  child: Column(
                                    children: [
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: size.height*0.08,
                                            width: size.width*0.16,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/images/female.png'),fit:BoxFit.fill
                                                ),
                                                border: Border.all(color: Styles.primaryColor,width: 2),
                                                color: Colors.white,
                                                shape: BoxShape.circle
                                            ),
                                          ),
                                          SizedBox(width: 5,),
                                          Column(
                                            children: [
                                              SizedBox(width: 10,),
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(height: 10,),
                                                  Row(
                                                    children: [
                                                      Icon(Icons.person,size: 18,color: Styles.primaryColor,),
                                                      SizedBox(width: 5,),
                                                      Text('Deepak Joshi'),
                                                    ],
                                                  ),
                                                  SizedBox(height: 10,),
                                                  Row(
                                                    children: [
                                                      Icon(Icons.phone,size: 18,color: Styles.primaryColor,),
                                                      SizedBox(width: 5,),
                                                      Text('9988776644'),
                                                      SizedBox(width: 5,),
                                                      Icon(Icons.people,size: 18,color: Styles.primaryColor,),
                                                      SizedBox(width: 5,),
                                                      Text('23 years'),
                                                    ],
                                                  ),
                                                  SizedBox(height: 10,),
                                                  Row(
                                                    children: [
                                                      Icon(Icons.people_alt_rounded,size: 18,color: Styles.primaryColor,),
                                                      SizedBox(width: 5,),
                                                      Text('Self'),
                                                      SizedBox(width: 5,),
                                                      Icon(Icons.male,size: 18,color: Styles.primaryColor,),
                                                      SizedBox(width: 5,),
                                                      Text('Male'),
                                                    ],
                                                  ),
                                                  SizedBox(height: 10,),
                                                  Row(
                                                    children: [
                                                      Icon(Icons.calendar_month,size: 18,color: Styles.primaryColor,),
                                                      SizedBox(width: 5,),
                                                      Text('06-10-1998',),
                                                    ],
                                                  ),
                                                  SizedBox(height: 10,),
                                                  Row(
                                                    children: [
                                                      Icon(Icons.location_on,size: 18,color: Styles.primaryColor,),
                                                      SizedBox(width: 5,),
                                                      Text('S.c.o-135,Sahibzada Ajit Singh\nNagar,Sahibzada Ajit Singh\nNagar, Punjab'),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              SizedBox(height: 10,),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Align(
                                        alignment: Alignment.center,
                                        child: InkWell(
                                          onTap: (){
                                            Navigator.pop(context);
                                          },
                                          child: Container(
                                            child: Center(child: Text('DONE',style: Styles.whiteText.copyWith(fontWeight: FontWeight.bold)),),
                                            height: 50,
                                            width: 150,
                                            decoration: BoxDecoration(
                                                color: Styles.primaryColor,
                                                borderRadius: BorderRadius.circular(10)
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text('Patient detail',style: TextStyle(color: Styles.primaryColor,fontWeight: FontWeight.bold),),
                    ),
                  ),
                  Container(
                    child: Center(child: Text('TRACK ORDER',style: Styles.whiteText,),),
                    height: size.height*0.07,
                    width: size.width*0.35,
                    decoration: BoxDecoration(
                        color: Styles.greyColor,
                        borderRadius: BorderRadius.circular(10)
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class LabWidget extends StatelessWidget {
  const LabWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade400,width: 1),
          boxShadow: [
            BoxShadow(blurRadius: 10,color: Colors.grey)
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width: 10,),
                  Container(
                    height: size.height*0.1,
                    width: size.width*0.18,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/img3.jpg'),fit:BoxFit.fill
                        ),
                        color: Colors.white,
                        shape: BoxShape.circle
                    ),
                  ),
                  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('81425845665158587'),
                          SizedBox(width: size.width*0.1,),
                          Text('₹ 500',style: TextStyle(color: Styles.primaryColor),),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Icon(Icons.calendar_month,size: 18,color: Styles.primaryColor,),
                          SizedBox(width: 5,),
                          Text('2022-12-13'),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Icon(Icons.watch_later,size: 18,color: Styles.primaryColor,),
                          SizedBox(width: 5,),
                          Text('19:00 PM - 19:20 PM',style: TextStyle(color: Colors.grey),),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.location_on,size: 18,color: Styles.primaryColor,),
                          SizedBox(width: 5,),
                          Text('S.c.o-135,Sahibzada Ajit Singh\nNagar,Sahibzada Ajit Singh\nNagar, Punjab',style: TextStyle(color: Colors.grey),),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Align(
                alignment: Alignment.centerRight,
                child: InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context){
                      return TrackOrderScreen();
                    }));
                  },
                  child: Container(
                    child: Center(child: Text('TRACK ORDER',style: Styles.whiteText,),),
                    height: size.height*0.07,
                    width: size.width*0.35,
                    decoration: BoxDecoration(
                        color: Styles.primaryColor,
                        borderRadius: BorderRadius.circular(10)
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class PharmacyWidget extends StatelessWidget {
  const PharmacyWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade400,width: 1),
          boxShadow: [
            BoxShadow(blurRadius: 10,color: Colors.grey)
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width: 10,),
                  Container(
                    height: size.height*0.1,
                    width: size.width*0.18,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/office.png'),fit:BoxFit.fill
                        ),
                        color: Colors.white,
                        shape: BoxShape.circle
                    ),
                  ),
                  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('81425845665158587'),
                          SizedBox(width: size.width*0.1,),
                          Text('₹ 2400',style: TextStyle(color: Styles.primaryColor),),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.location_on,size: 18,color: Styles.primaryColor,),
                          SizedBox(width: 5,),
                          Text('S.c.o-135,Sahibzada Ajit Singh\nNagar,Sahibzada Ajit Singh\nNagar, Punjab',style: TextStyle(color: Colors.grey),),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Align(
                alignment: Alignment.centerRight,
                child: DottedBorder(
                  dashPattern: [5,1],
                  borderType: BorderType.RRect,
                  strokeWidth: 2,
                  radius: Radius.circular(10),
                  color: Styles.primaryColor,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    child: InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context){
                          return PharmacyViewDetail();
                        }));
                      },
                      child: Container(
                        child: Center(child: Text('VIEW DETAILS',style: TextStyle(color: Styles.primaryColor),),),
                        height: size.height*0.06,
                        width: size.width*0.35,
                        // decoration: BoxDecoration(
                        //   color: Colors.red,
                        //   borderRadius: BorderRadius.circular(10)
                        // ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
