import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:sbsc_capstone_team_jupiter/first_screen.dart';
import 'package:sizer/sizer.dart';


class SplashScreen extends StatefulWidget {

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  void initState(){
    super.initState();
    startTime();
  }


  startTime() async{
    var duration =  Duration(milliseconds:2500);
    return Timer(duration, route);
  }

  route(){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => FirstScreen()),);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
              child: Container(
                width:375,height: 812,
               child: Column(
                 children: [
                  SizedBox(height: 295.78,
                  ),
                   Image.asset('assets/logo.png',width: 300.62,height: 130.43,),
                   Spacer(),
                   Container(
                     height: 195,width: 375,
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Image.asset('assets/images/orange.png',width: 195,height: 195,),
                         Image.asset('assets/images/berry.png',width: 195,height: 195,),
                       ],
                     ),
                   ),
                 ],
               ),
               // child:Center(child: Image.asset('assets/logo.png',width: 300.62,height: 130.43,)),
              ),
            ),
    );
  }
}