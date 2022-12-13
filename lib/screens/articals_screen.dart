import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class ArticalsScreen extends StatefulWidget {
  const ArticalsScreen({Key? key}) : super(key: key);

  @override
  State<ArticalsScreen> createState() => _ArticalsScreenState();
}

class _ArticalsScreenState extends State<ArticalsScreen> {
  bool isselected1=true;
  bool isselected2=false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        child: Column(
          children: [
            Container(
              height: 25,
              color: Styles.greenColor,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10,left: 10,bottom: 20),
              child: Container(
                color: Colors.white,
                height: size.height*0.85,
                width: size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Articles',style:Styles.mediumText),
                    ),
                    SizedBox(height: 10,),
                    Container(
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
                                isselected1= true;
                                isselected2=false;
                              });
                            },
                            child: Container(

                              child: Center(
                                child: Text('FEED',style: Styles.mediumText.copyWith(color: isselected2?Colors.black:Colors.white),),
                              ),
                              height: 50,
                              width: 150,
                              decoration: BoxDecoration(
                                  color: isselected1? Styles.greenColor: null,
                                  borderRadius: BorderRadius.horizontal(left: Radius.circular(30))
                              ),
                            ),
                          ),
                          SizedBox(width: 5,),
                          InkWell(
                            onTap: (){
                              setState(() {
                                isselected2=true;
                                isselected1=false;
                              });
                            },
                            child: Container(
                              child: Center(
                                child: Text('EXPLORE',style: Styles.mediumText.copyWith(color: isselected1?Colors.black:Colors.white),),
                              ),
                              height: 50,
                              width: 150,
                              decoration: BoxDecoration(
                                  color: isselected2? Styles.greenColor: null,
                                  borderRadius: BorderRadius.horizontal(right: Radius.circular(30))
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 8,),
                    Container(
                      width: size.width,
                      height: size.height*.70,
                      child: ListView.builder(
                        itemCount: 2,
                          itemBuilder: (context,int index){
                        if(isselected1==true){
                          return Card(
                            child: Container(
                              color: Colors.white,
                              width: size.width,
                              height: size.height*.35,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Container(
                                      height: size.height*.25,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage('assets/images/img2.jpg'),fit: BoxFit.fill
                                        )
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(6.0),
                                    child: Text('Health Article',style: Styles.smallText,),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('How do doctors survives with this pandemic',style: Styles.graySmallText,),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }
                        else if(isselected2==true){
                          return Container(
                            width: size.width,
                            height: size.height*.32,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        height: 200,
                                        width: 150,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          image: DecorationImage(
                                            image: AssetImage('assets/images/img1.jpg'),fit: BoxFit.fill
                                          )
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        height: 200,
                                        width: 150,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          image: DecorationImage(
                                            image: AssetImage('assets/images/img1.jpg'),fit: BoxFit.fill
                                          )
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          );
                        }
                        else{
                          return Text('data');
                        }
                      }),
                    ),




                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
