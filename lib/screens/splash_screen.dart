import 'package:flutter/material.dart';
import 'package:sbsc_capstone_team_jupiter/firstscreen.dart';
import 'dart:async';


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
    var duration =  Duration(seconds: 6);
    return Timer(duration, route);
  }

  route(){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => FirstScreen()),);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: 375,
              height: 812,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height:295.78,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 67.73,left: 67.65),
                      // width: 239.62,
                      // height: 130.43,
                      child:Image.asset('assets/images/aduabafresh.png',width: 239.62,height: 130.43,),
                    ),
                    SizedBox(
                      height:385.78,
                    ),
                  ],
                ),
              ),
            Positioned(child:
             Image.asset('assets/images/orange.png',width:195,height: 195,),left: 0,top: 662,
            ),
            Positioned(child:
            Image.asset('assets/images/berry.png',width:195,height: 195,),right: 0,top: 662,
            ),
                  Container(
                  width: 375,
                  height: 812,
                  color: Colors.transparent,
                  child: GestureDetector(
                  onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => FirstScreen()),);
                  },
                  ),),
          ],
        ),
      ),
    );
  }
}