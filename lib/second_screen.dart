import 'dart:async';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:sbsc_capstone_team_jupiter/third_screen.dart';
import 'package:sbsc_capstone_team_jupiter/login.dart';
import 'package:sbsc_capstone_team_jupiter/create_account.dart';
class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {


  @override
  void initState(){
    super.initState();
    startTime();
  }

  startTime() async{
    var duration = Duration(seconds: 8);
    return Timer(duration, route);
  }

  route(){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>  ThirdScreen()),);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: 100.h,
              width: 100.w,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/splash2.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              height: 100.h,
              width: 100.w,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: FractionalOffset.topCenter,
                    end: FractionalOffset.bottomCenter,
                    colors: [ Color.fromRGBO(242, 144, 47, 0.4),
                      Color.fromRGBO(58, 149, 60, 0.16),
                      Color.fromRGBO(0, 0, 0, 0.78)
                    ],
                    /*stops: [
                                  0,0.41,1.0
                            ]
                             */)
              ),
            ),
            Container(
              height: 812,
              width: 375,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                        height:483
                    ),
                    Container(
                      width: 44,
                      height: 28,
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width:8,
                              height: 8,
                              decoration: BoxDecoration(
                                color: Color(0xffffffff),
                                shape: BoxShape.circle,
                              ),
                            ),
                            Container(
                              width:8,
                              height: 8,
                              decoration: BoxDecoration(
                                color:Color(0xff3A953C),
                                shape: BoxShape.circle,
                              ),
                            ),
                            Container(
                              width:8,
                              height: 8,
                              decoration: BoxDecoration(
                                color: Color(0xffffffff),
                                shape: BoxShape.circle,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 9,),
                    Container(
                      width: 327,
                      child: Text(
                        'Eat healthy, Spend Wisely. Be Happy',
                        style: TextStyle(
                          color: Color(0xffffffff),
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                    ),
                    SizedBox(height: 9,),
                    Container(
                      width: 327,
                      child: Text(
                        'Discover products by our vendors at very affordable prices',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color(0xffffffff),
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.normal,
                          fontSize: 17,
                        ),
                      ),
                    ),
                    SizedBox(height: 62,),
                    Center(
                      child: GestureDetector(
                        child: Container(
                          height: 47,
                          width: 327,
                          decoration: BoxDecoration(
                              color: Color(0xff3A953C),
                              borderRadius: BorderRadius.circular(5.0)
                          ),
                          child: Center(
                            child: Text(
                              'Get Started',
                              style: TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.normal,
                                color: Color(0xffffffff),
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => CreatePassPage()),);
                        },
                      ),
                    ),
                    SizedBox(height: 16,),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Have an account already?",
                            softWrap: true,
                            style: TextStyle(
                              color: Color(0xff999999),
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> SigninPage()));
                            },
                            child: Text(
                              "Sign In",
                              softWrap: true,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),],
        ),),
    );
  }
}
