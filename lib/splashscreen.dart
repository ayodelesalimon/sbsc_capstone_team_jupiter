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
        body:Stack(
          children:[
            Container(
              width:100.w,height:100.h,
             child:Center(child: Image.asset('assets/logo.png',width: 300.62,height: 130.43,)),
            ),
            Container(
              width:100.w,height:100.h,
              child:Positioned(
                child:Image.asset('assets/images/orange.png',width:195,height: 195,),left: 0,bottom:0,
                //         ),
              ),
            ),
            Container(
              width:100.w,height:100.h,
              child:Positioned(
                child:Image.asset('assets/images/berry.png',width:195,height: 195,),left: 0,bottom:0,
                //         ),
              ),
            ),
          ],

        ),
    );
  }
}