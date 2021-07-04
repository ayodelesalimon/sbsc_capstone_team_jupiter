import 'dart:async';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:sbsc_capstone_team_jupiter/firstscreen.dart';


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
        child: Container(
          width: 100.w,
          height: 100.h,
          child: GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => FirstScreen()),);
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 5.54.h,
                  width: 50.93.w,
                  // height: MediaQuery.of(context).size.height,
                  // width:  MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(
                    top:28.81.h,
                    bottom:1.97.h,
                  ),
                  child: Image(
                    image: AssetImage('assets/images/rockherocolor.png'),
                  ),
                ),
                Container(
                  height: 2.33.h,
                  width: 466.67.h,
                  margin: EdgeInsets.only(
                    bottom:49.5.h,
                  ),
                  child: Text(
                    'You Shop, We Deliver.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF010F07),
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w600,
                      fontSize: 16.sp,
                      letterSpacing: 0.2,
                    ),
                  ),
                ),

                Container(
                  child: Text(
                    'Version: 2.0',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF868686),
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.normal,
                      fontSize: 13.sp,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
