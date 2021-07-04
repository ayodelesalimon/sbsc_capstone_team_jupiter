import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sbsc_capstone_team_jupiter/constants.dart';
import 'package:sbsc_capstone_team_jupiter/screens/account/edit_profile.dart';


class Profile extends StatefulWidget {
  final String name = 'profilePage';
  const Profile({Key key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    // final height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: SingleChildScrollView(
        child: SafeArea(
        child: Container(
        width:375,
        height:812,
        child: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(top: 40,right: 24,left: 24,bottom: 17),
            width: 375,
            height: 116,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.white.withOpacity(0.1),
                  spreadRadius: 2,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('assets/images/back.png', width: 23,height: 14,),
                Text(
                  "Account",
                  style:
                  TextStyle(fontSize: 24, fontWeight: FontWeight.bold,color: Color(0xff819272)),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height:48 ,),
                    Container(
                      width: 327,height: 68,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                              width:60,height:60,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: Image.asset("assets/images/Profile.png",width: 60,height: 60,),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Container(
                            width: 217,height: 68,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Andrea Charles",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,color: Color(0xff10151a)),
                                ),
                                Text("Andrea_charles@gmail.com", style: TextStyle(
                                    fontSize: 13,color: Color(0xff999999)),),
                                Text("+234 809 202 3024", style: TextStyle(
                                    fontSize: 13,
                                    color: Color(0xff999999)),)
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 14,
                          ),
                          Image.asset("assets/images/edit.png",width: 16,height: 15.94,),
                        ],
                      ),
                    ),
                SizedBox(
                  height: 78,
                ),
                    Container(
                      width:122,
                      height: 24,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/heart.png',width: 17,height: 14.99,),
                          Text('My wishllist',style: TextStyle(color: Color(0xff10151a),fontSize:17),),
                        ],
                      ),
                    ),
                    Padding(
                      padding:EdgeInsets.symmetric(vertical: 24),
                      child: Divider(
                        color: Color(0xfff5f5f5),
                        thickness: 1,
                      ),
                    ),
                Container(
                  width:116,
                  height: 24,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/orangecart.png',width: 17.7,height: 17,),
                      Text('My orders',style: TextStyle(color: Color(0xff10151a),fontSize:17),),
                    ],
                  ),
                ),
                Padding(
                  padding:EdgeInsets.symmetric(vertical: 24),
                  child: Divider(
                    color: Color(0xfff5f5f5),
                    thickness: 1,
                  ),
                ),
                Container(
                  width:108,
                  height: 24,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/track.png',width: 20.36,height: 16,),
                      Text('Payment',style: TextStyle(color: Color(0xff10151a),fontSize:17),),
                    ],
                  ),
                ),
                Padding(
                  padding:EdgeInsets.symmetric(vertical: 24),
                  child: Divider(
                    color: Color(0xfff5f5f5),
                    thickness: 1,
                  ),
                ),
                Container(
                  width:161,
                  height: 24,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/delivery.png',width: 20,height: 16,),
                      Text('Shipping details',style: TextStyle(color: Color(0xff10151a),fontSize:17),),
                    ],
                  ),
                ),
                Padding(
                  padding:EdgeInsets.symmetric(vertical: 24),
                  child: Divider(
                    color: Color(0xfff5f5f5),
                    thickness: 1,
                  ),
                ),
                Container(
                  width:103,
                  height: 24,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/setting.png',width: 19.86,height: 20.97,),
                      Text('Settings',style: TextStyle(color: Color(0xff10151a),fontSize:17),),
                    ],
                  ),
                ),
                  ],
                ),
              ),
            SizedBox(height: 94,),
          Center(
            child: GestureDetector(
              onTap:(){},
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xffBB2F48),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: Text(
                    'Log Out',
                    style: TextStyle(
                        color: Color(0xffffffff),
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                width: 327,
                height: 47,
              ),
            ),
          ),
          ],
        ),
      ),),),
    );
  }
}
