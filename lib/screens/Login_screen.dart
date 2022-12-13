import 'package:flutter/material.dart';
import 'package:hk/utils/app_styles.dart';
import 'package:hk/utils/image_constants.dart';

import '../widgets/button_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 60,),
          Image.asset(ImageConstants().appLogo,height: 100,),
          SizedBox(height: 60,),

          SizedBox(
            height: 220,
            child: Stack(
              children: [
                Container(
                  //height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [


                      Container(

                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(color: Colors.grey.withOpacity(0.4),spreadRadius: 0.2,
                            blurRadius: 20,
                            )
                          ],
                        ),

                        width: MediaQuery.of(context).size.width * 0.8,
                        child: Container(
                          child: Column(
                            children: [
                            Padding(padding: EdgeInsets.all(20),
                            child: TextField(
                              style: const TextStyle(
                                fontSize: 20,
                                //fontWeight: FontWeight.bold,
                              ),
                              decoration: InputDecoration(

                                floatingLabelBehavior: FloatingLabelBehavior.never,
                                hintStyle: TextStyle(fontSize: 16),

                                hintText: 'Email',


                                prefixIcon: Icon(Icons.person,color: Styles.greenColor,size: 30,),
                                border: const UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey,),),
                                enabledBorder: UnderlineInputBorder( borderSide: BorderSide(
                                  color: Colors.grey,
                                ),


                                ),
                                disabledBorder: const UnderlineInputBorder( borderSide: BorderSide(
                                  color: Colors.grey,
                                ),


                                ),
                                focusedBorder: UnderlineInputBorder( borderSide: BorderSide(
                                  color: Colors.grey,
                                ),


                                ),

                              ),),
                            ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 20,left: 20,top: 0),
                                child: TextField(
                                  style: TextStyle(fontSize: 20),
                                  decoration: InputDecoration(
                                    floatingLabelBehavior: FloatingLabelBehavior.never,
                                    hintStyle: TextStyle(fontSize: 16),

                                    hintText: 'Password',
                                    suffixIcon: Icon(Icons.remove_red_eye,color: Colors.black,),
                                    prefixIcon: Icon(Icons.key,color: Styles.greenColor,size: 35,),

                                    border: InputBorder.none,

                                  )

                                ),
                              ),
                              SizedBox(height: 30,)
                            ],
                          ),
                        ),
                      )

                    ],
                  ),
                ),
                Positioned(
                    top: 155,
                    left: 95,
                    child: SizedBox(
                      width: 200,
                      child: Buttonls(data: 'Login',),
                    )),
                SizedBox(height: 50,)
              ],
            ),
          ),
          SizedBox(height: 20,),
          Text('Forgot Password ?'),
          SizedBox(height: 20,),
          Text('Register',style: TextStyle(color: Styles.greenColor,decoration: TextDecoration.underline),)
        ],
      ),
    );
  }
}
