import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TrackOrderPage extends StatefulWidget {
  @override
  _TrackOrderPageState createState() => _TrackOrderPageState();
}

class _TrackOrderPageState extends State<TrackOrderPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        // child: SingleChildScrollView(
        child: SingleChildScrollView(
          child: Container(
            width: 375,
            height: 812,
            color: Color(0xffffffff),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding:
                  EdgeInsets.only(bottom: 17, right: 24, left: 24, top: 40),
                  width: 375,
                  height: 116,
                  decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xffffffff).withOpacity(0.1),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap:(){
                          Navigator.pop(context);
                        },
                        child: Image.asset(
                          'assets/images/back.png',
                          width: 23,
                          height: 14,
                          color: Color(0xff424347),
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Container(
                          width: 206,
                          height: 29,
                          child: Text(
                            'Order Summary',
                            style: TextStyle(
                                fontSize: 24,
                                color: Color(0xff819272),
                                fontWeight: FontWeight.bold),
                          ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 48),
                Container(
                  width: 293,
                  height: 442,
                  margin: EdgeInsets.only(left: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Your order code is: Z38-9811-K9',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Color(0xff999999),),),
                      SizedBox(height: 12,),
                      Text('2 Items: total ( including delivery ) N32,000.00',style: TextStyle(fontSize: 13,color: Color(0xff999999),),),
                      SizedBox(height: 32,),
                      Stack(
                        children: [
                          Container(
                            width: 222,
                            height: 364,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 222,
                                  height: 46,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Image.asset('assets/images/orangoval.png',width:8,height: 8,),
                                      Container(
                                        width: 191,
                                        height: 46,
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('Order placed on 26 July',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Color(0xff10151A),),textAlign: TextAlign.left,),
                                            Text('We have received your order',style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal,color: Color(0xff979797),),textAlign: TextAlign.left,),
                                          ],
                                        ),
                                      ),
                                    ],

                                  ),
                                ),
                                Container(
                                  width: 222,
                                  height: 46,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Image.asset('assets/images/orangoval.png',width:8,height: 8,),
                                      Container(
                                        width: 191,
                                        height: 46,
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('Confirmed',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Color(0xff10151A),),textAlign: TextAlign.left,),
                                            Text('Order accepted on 26 July',style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal,color: Color(0xff979797),),textAlign: TextAlign.left,),
                                          ],
                                        ),
                                      ),
                                    ],

                                  ),
                                ),
                                Container(
                                  width: 222,
                                  height: 46,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Image.asset('assets/images/orangoval.png',width:8,height: 8,color: Color(0xff000000),),
                                      Container(
                                        width: 191,
                                        height: 46,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text('Order Shipped',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Color(0xff979797),),textAlign: TextAlign.left,),
                                            Text('Estimated for 3rd Aug',style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal,color: Color(0xff979797),),textAlign: TextAlign.left,),
                                          ],
                                        ),
                                      ),
                                    ],

                                  ),
                                ),
                                Container(
                                  width: 222,
                                  height: 46,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Image.asset('assets/images/orangoval.png',width:8,height: 8,color: Color(0xff000000),),
                                      Container(
                                        width: 191,
                                        height: 46,
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('Delivered',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Color(0xff979797),),textAlign: TextAlign.left,),
                                            Text('Estimated for 3rd Aug',style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal,color: Color(0xff979797),),textAlign: TextAlign.left,),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                         Positioned(child: Image.asset('assets/images/stroke.png',width: 2,height: 72,color: Color(0xffD8D8D8
                         ).withOpacity(0.8),),
                           left: 3,
                           top:26,
                         ),
                          Positioned(child: Image.asset('assets/images/stroke.png',width: 2,height: 72,color: Color(0xffD8D8D8
                          ).withOpacity(0.8),),
                            left: 3,
                            top:132,
                          ),
                          Positioned(child: Image.asset('assets/images/stroke.png',width: 2,height: 72,color: Color(0xffD8D8D8
                          ).withOpacity(0.8),),
                            left: 3,
                            top:238,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 99,),
                Center(
                  child: GestureDetector(
                    onTap:(){
                      showDialog<String>(
                        context: context,
                        builder: (
                            BuildContext context) =>
                            AlertDialog(
                              insetPadding: EdgeInsets.only(left: 24, right: 24,top: 261,bottom: 246),
                              content: Center(
                                child:SingleChildScrollView(
                                  child: Container(
                                    width: 279,
                                     height: 305,
                                    child:Column(

                                      children: [
                                        Center(
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Center(
                                                child: Container(
                                                  width: 153,
                                                  child: Text('Cancel Order',style:  TextStyle(
                                                    fontSize: 24,
                                                    fontWeight: FontWeight.bold,
                                                    color: Color(0xff10151a),
                                                  ) , textAlign: TextAlign.center,),
                                                ),
                                              ),
                                              SizedBox(height:16),
                                              Center(
                                                child: Container(
                                                  width: 279,
                                                  child: Text('Cancelling this order Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean hendrerit vel neque eget ultrices.',style:  TextStyle(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.normal,
                                                    color: Color(0xff999999),
                                                  ) , textAlign: TextAlign.center,),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(height:32),
                                        Center(
                                          child: GestureDetector(
                                            onTap:(){
                                            },
                                            child: Container(
                                              width: 279,
                                              height:47,
                                              decoration: BoxDecoration(
                                                color: Color(0xffBB2F48),
                                                borderRadius: BorderRadius.circular(5.0),
                                              ),
                                              child: Center(
                                                child: Text('Yes. Cancel Order', style: TextStyle(
                                                  color: Color(0xffffffff),
                                                  fontStyle: FontStyle.normal,
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 16,
                                                ),),
                                              ),),
                                          ),
                                        ),
                                       SizedBox(height:16),
                                        Center(
                                          child: GestureDetector(
                                            onTap:(){
                                            },
                                            child: Container(
                                              width: 279,
                                              height:47,
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Color(0xff10151a),
                                                  width: 1,
                                                ),
                                                color: Color(0xffffffff),
                                                borderRadius: BorderRadius.circular(5.0),
                                              ),
                                              child: Center(
                                                child: Text('No, Don’t Cancel Order ', style: TextStyle(
                                                  color: Color(0xff10151a),
                                                  fontStyle: FontStyle.normal,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16,
                                                ),),
                                              ),),
                                          ),
                                        ),
                                        SizedBox(height:32),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xffBB2F48),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Text(
                          'Cancel Order',
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
                SizedBox(height:60),
              ],
            ),
          ),
        ),
      ),
    );
  }
}