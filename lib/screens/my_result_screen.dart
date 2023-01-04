import 'package:flutter/material.dart';
import 'package:hk/utils/app_styles.dart';
import 'package:iphone_has_notch/iphone_has_notch.dart';
class MyResultScreen extends StatefulWidget {
  const MyResultScreen({Key? key}) : super(key: key);

  @override
  State<MyResultScreen> createState() => _MyResultScreenState();
}

class _MyResultScreenState extends State<MyResultScreen> {
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
          body: Container(
            height: size.height*0.95,
            width: size.width,
            child: Column(
              children: [
                Container(
                  color: Colors.grey,
                  height: size.height*0.07,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(onPressed: (){
                        return Navigator.pop(context);
                      }, icon: Icon(Icons.arrow_back,size: 25,)),
                      Text('My Result',style: Styles.mediumText,),
                      SizedBox(width: 25,)
                    ],
                  ),
                ),
                Container(
                  color: Colors.red.shade50,
                  height: size.height*0.88,
                  child: ListView.builder(
                      itemCount: 5,
                      itemBuilder: (context,index){
                        return Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(

                            child: Card(
                              child: Container(
                                height: size.height*0.4,
                                width: size.width*0.7,

                              ),
                            ),
                          ),
                        );
                      }),
                )
              ],
            ),
          ),
        )
    );
  }
}
