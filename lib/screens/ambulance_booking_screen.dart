import 'package:flutter/material.dart';
import 'package:hk/utils/app_styles.dart';
class AmbulanceBookingScreen extends StatefulWidget {
  const AmbulanceBookingScreen({Key? key}) : super(key: key);

  @override
  State<AmbulanceBookingScreen> createState() => _AmbulanceBookingScreenState();
}

class _AmbulanceBookingScreenState extends State<AmbulanceBookingScreen> {
  bool tripSelect=true;
  bool myBookSelect=false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text('Ambulance Booking Screen',style: Styles.mediumText.copyWith(fontSize: 20),),
        centerTitle: true,
      ),
      body: Container(
        color: Styles.bgColor,
        height: size.height*0.89,
        width: size.width,
        child: Column(
          children: [
            SizedBox(height: 5,),
            Container(
              height: size.height*0.07,
              width: size.width*0.95,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Styles.primaryColor),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: (){
                      setState(() {
                        tripSelect=true;
                        myBookSelect=false;
                      });
                    },
                    child: Container(
                      height: size.height*0.07,
                      width: size.width*0.47,
                      decoration: BoxDecoration(
                        color:tripSelect? Styles.primaryColor:Colors.white,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(25),bottomLeft: Radius.circular(25))
                      ),
                      child: Center(
                        child: Text('TRIP DETAILS',style: TextStyle( color:tripSelect? Colors.white:Colors.black,),),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      setState(() {
                        tripSelect=false;
                        myBookSelect=true;
                      });
                    },
                    child: Container(
                      height: size.height*0.07,
                      width: size.width*0.47,
                      decoration: BoxDecoration(
                          color:myBookSelect? Styles.primaryColor:Colors.white,
                        borderRadius: BorderRadius.only(topRight: Radius.circular(25),bottomRight: Radius.circular(25))
                      ),
                      child: Center(
                        child: Text('MY BOOKINGS',style: TextStyle( color:myBookSelect? Colors.white:Colors.black,),),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5,),
            Container(
              height: size.height*0.798,
              width: size.width,
              child: ListView.builder(
                itemCount: 25,
                  itemBuilder: (context,index){
                if(tripSelect==true && myBookSelect==false){
                  return TripDetailWidget(size: size);
                }
                else if(tripSelect==false && myBookSelect==true){
                  return MyBookingWidget();
                }
                else{
                  return Text('');
                }
              }),
            ),
          ],
        )
      ),
    );
  }
}

class MyBookingWidget extends StatelessWidget {
  const MyBookingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(blurRadius: 5,color: Colors.grey)
          ],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: size.height*0.1,
                    width: size.width*0.2,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/book.jpg'),fit: BoxFit.cover
                        ),
                        shape: BoxShape.circle,
                        border: Border.all(color: Styles.primaryColor,width: 2)
                    ),
                  ),
                  SizedBox(width: 12,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10,),
                      Text('Civil Hospital'),
                      SizedBox(height: 6,),
                      Text('Ambulance Type',style: TextStyle(fontSize: 12,color: Colors.grey),),
                      SizedBox(height: 6,),
                      Text('mohali,punjab to..'),
                    ],
                  ),
                  SizedBox(width: size.width*0.07,),
                  Column(
                    children: [
                      SizedBox(height: 5,),
                      Text('2022-12-10'),
                      SizedBox(height: 5,),
                      Container(
                        color: Styles.primaryColor,
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Center(child: Text('10:37:04',style: TextStyle(color: Colors.white),)),
                          )),
                      SizedBox(height: 10,),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(width: 2,color: Styles.primaryColor),
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Center(child: Text('Upcoming Booking',style: TextStyle(fontSize: 12),)),
                        ),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Text('Order ID :- ',style: TextStyle(fontWeight: FontWeight.bold),),
                  Text('123123123123123123',style: TextStyle(fontWeight: FontWeight.bold,color: Styles.primaryColor),),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}

class TripDetailWidget extends StatelessWidget {
  const TripDetailWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10,right: 10,left: 10),
      child: Container(
        height: size.height*0.12,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border(
                bottom: BorderSide(color: Colors.black,width: 0.4)
            )
        ),
        child: Row(
          children: [
            SizedBox(width: 10,),
            Container(
              height: size.height*0.1,
              width: size.width*0.18,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/img4.jpg'),fit: BoxFit.cover
                  )
              ),
            ),
            SizedBox(width: 10,),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Driver Name: gaaak',style: Styles.mediumBoldText,),
                Text('Ambulance No: 1234568'),
                Text('Hospital Name: Civil Hospital'),
                Text('Price : 10025.21',style: Styles.mediumBoldText,),
              ],
            )
          ],
        ),
      ),
    );
  }
}
