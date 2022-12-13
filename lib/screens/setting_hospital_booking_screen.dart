import 'package:flutter/material.dart';
import 'package:hk/utils/app_styles.dart';
class HospitalScreen extends StatefulWidget {
  const HospitalScreen({Key? key}) : super(key: key);

  @override
  State<HospitalScreen> createState() => _HospitalScreenState();
}

class _HospitalScreenState extends State<HospitalScreen> {
  bool mybookSelect=true;
  bool hisSelect=false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back,color: Colors.black,),
          ),
          title: Align(
            alignment: Alignment.center,
              child: Text('Hospital Bookings',style: Styles.largeText)),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: 50,
                width: 307,
                decoration: BoxDecoration(
                  border:  Border.all(color: Styles.greenColor),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: (){
                        setState(() {
                          mybookSelect= true;
                          hisSelect=false;
                        });
                      },
                      child: Container(

                        child: Center(
                          child: Text('MY BOOKINGS',style: Styles.mediumText.copyWith(color: mybookSelect?Colors.white:Colors.black),),
                        ),
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(
                            color: mybookSelect? Styles.greenColor: null,
                            borderRadius: BorderRadius.horizontal(left: Radius.circular(30))
                        ),
                      ),
                    ),
                    SizedBox(width: 5,),
                    InkWell(
                      onTap: (){
                        setState(() {
                          hisSelect=true;
                          mybookSelect=false;
                        });
                      },
                      child: Container(
                        child: Center(
                          child: Text('HISTORY',style: Styles.mediumText.copyWith(color: hisSelect?Colors.white:Colors.black),),
                        ),
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(
                            color: hisSelect? Styles.greenColor: null,
                            borderRadius: BorderRadius.horizontal(right: Radius.circular(30))
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.grey.shade300,
              height: size.height*0.7655,
              width: size.width,
            ),
          ],
        ),
      ),
    );
  }
}
