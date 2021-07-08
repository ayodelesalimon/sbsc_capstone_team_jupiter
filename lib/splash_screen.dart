import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sbsc_capstone_team_jupiter/screens/tab_controller.dart';
import 'dart:async';

import 'screens/auth/create_account.dart';
import 'screens/auth/login.dart';

class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
   new Future.delayed(
        const Duration(seconds: 3),
        () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginPage()),
            ));
  }

  // startTime() async {
  //   var duration = Duration(milliseconds: 250);
  //   return Timer(duration, route);
  // }

  // route() {
  //   Navigator.pushNamed(context, '/home');
  //   //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage()),);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/launch_image.png',
                ),
                fit: BoxFit.cover)),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        //  child: Column(
        //    children: [
        //     SizedBox(height: 295.78,
        //     ),
        //      Image.asset('assets/logo.png',width: 500.62,height: 130.43,),
        //      Spacer(),
        //      Container(
        //       // height: 195,width: 375,
        //        child: Row(
        //          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //          children: [
        //            Image.asset('assets/images/orange.png'),
        //            Image.asset('assets/images/berry.png',),
        //          ],
        //        ),
        //      ),
        //    ],
        //  ),
        // child:Center(child: Image.asset('assets/logo.png',width: 300.62,height: 130.43,)),
      ),
    );
  }
}
