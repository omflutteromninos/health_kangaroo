import 'package:flutter/material.dart';
import 'package:hk/utils/app_styles.dart';
class MyConsult extends StatefulWidget {
  const MyConsult({Key? key}) : super(key: key);

  @override
  State<MyConsult> createState() => _MyConsultState();
}

class _MyConsultState extends State<MyConsult> {
  bool upcomingSelect=true;
  bool currentSelect=false;
  bool historySelect=false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 15,right: 15),
          child: Container(
            height: size.height*0.95,
            width: size.width,
            child: Column(
              children: [
                Container(
                  height: 45,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(width: 5,),
                      Text('My Consultations',style: Styles.largeText,),
                      InkWell(
                        onTap: (){
                          Navigator.pop(context);
                        },
                          child: Icon(Icons.highlight_remove,color: Styles.greenColor,
                          ))
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(color: Styles.greenColor)
                  ),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: (){
                          setState(() {
                            upcomingSelect= true;
                            currentSelect=false;
                            historySelect=false;
                          });
                        },
                        child: Container(

                          child: Center(
                            child: Text('UPCOMING',style: Styles.mediumText.copyWith(color: upcomingSelect?Colors.white:Colors.black),),
                          ),
                          height: 50,
                          width: 109,
                          decoration: BoxDecoration(
                              color: upcomingSelect? Styles.greenColor: null,
                              borderRadius: BorderRadius.horizontal(left: Radius.circular(25))
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          setState(() {
                            upcomingSelect= false;
                            currentSelect=true;
                            historySelect=false;
                          });
                        },
                        child: Container(

                          child: Center(
                            child: Text('CURRENT',style: Styles.mediumText.copyWith(color: currentSelect?Colors.white:Colors.black),),
                          ),
                          height: 50,
                          width: 110,
                          decoration: BoxDecoration(
                              color: currentSelect? Styles.greenColor: null,
                              borderRadius: BorderRadius.horizontal(left: Radius.circular(0))
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          setState(() {
                            upcomingSelect= false;
                            currentSelect=false;
                            historySelect=true;
                          });
                        },
                        child: Container(

                          child: Center(
                            child: Text('HISTORY',style: Styles.mediumText.copyWith(color: historySelect?Colors.white:Colors.black),),
                          ),
                          height: 50,
                          width: 109,
                          decoration: BoxDecoration(
                              color: historySelect? Styles.greenColor: null,
                              borderRadius: BorderRadius.horizontal(right: Radius.circular(25))
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
