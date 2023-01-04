import 'package:flutter/material.dart';

import '../utils/app_styles.dart';
class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0.3,
        title: const Text('Notifications'),
        centerTitle: true,
      ),
      body: Container(
        height: size.height,
        width: size.width,
        child: ListView.builder(
          itemCount: 20,
            itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(blurRadius: 2,color: Colors.grey)
                ]
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(color: Styles.primaryColor,width: 2),
                        image: DecorationImage(
                          image: AssetImage('assets/images/launchericon.png'),fit: BoxFit.cover
                        )
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Patient Admitted',style: TextStyle(
                            fontWeight: FontWeight.w600,
                          fontSize: 16
                        ),),
                        SizedBox(height: 8,),
                        Text('Deepak Joshi Admitted to Civil Hospital',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                        ),
                        SizedBox(height: 8,),
                        Text('Date & Time: 2022-10-18 15:32:46',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                        ),
                        SizedBox(height: 8,),
                      ],
                    ),
                    Icon(Icons.highlight_remove_sharp,color: Styles.redColor,)
                  ],
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
