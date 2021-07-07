import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


enum Button{
  home, search, menu,
}

class ZeroWishListPage extends StatefulWidget {
  @override
  _ZeroWishListPageState createState() => _ZeroWishListPageState();
}

class _ZeroWishListPageState extends State<ZeroWishListPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        // child: SingleChildScrollView(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
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
                      height: 142,
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
                          Image.asset(
                            'assets/images/back.png',
                            width: 23,
                            height: 14,
                            color: Color(0xff424347),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Container(
                              width: 140,
                              height: 29,
                              child: Text(
                                'My WishList',
                                style: TextStyle(
                                    fontSize: 24,
                                    color: Color(0xff819272),
                                    fontWeight: FontWeight.bold),
                              )),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: 81,
                            child: Text(
                              '18 items listed',
                              style: TextStyle(
                                fontSize: 13,
                                color: Color(0xff999999),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 91.53),
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/biglove.png',
                            width: 130.21,
                            height: 119.47,
                            color: Color(0xff819272).withOpacity(0.5),
                          ),
                          SizedBox(height: 33.25),
                          Container(
                              child: Text(
                                'Your wishlist is empty',
                                style: TextStyle(
                                    color: Color(0xff10151A),
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                              width: 273,
                              height: 29),
                          SizedBox(height: 16),
                          Container(
                              child: Text(
                                'Hit the green button down below to find interesting products',
                                style: TextStyle(
                                    color: Color(0xff10151A),
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal),
                                textAlign: TextAlign.center,
                              ),
                              width: 273,
                              height: 29),
                          SizedBox(height: 161.75),
                          GestureDetector(
                            onTap:(){},
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xff3A953C),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Center(
                                child: Text(
                                  'Discover products',
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
                        ],
                      ),
                    ),
                    SizedBox(height:48),
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                child: Center(
                  child:Container(
                    decoration: BoxDecoration(
                      color: Color(0xffffffff),
                      boxShadow: [
                        BoxShadow(color:Color.fromRGBO(0, -2, 20, 0.1),),
                      ],
                    ),
                    width: 375,
                    height:88,
                    child: Center(
                      child:Container(
                        width: 181.1,
                        height: 21.2,
                        child: Row(
                          children: [
                            GestureDetector(onTap:(){},child: Image.asset('assets/images/home.png',width: 16.29,height: 15.41,color: Color(0xffDEDEDE),)),
                            Spacer(),
                            GestureDetector(onTap:(){},child: Image.asset('assets/images/search.png',width: 21.2,height: 21.2,color: Color(0xffDEDEDE),)),
                            Spacer(),
                            GestureDetector(onTap:(){},child: Image.asset('assets/images/dialog.png',width: 21.2,height: 21.2,color: Color(0xff3A953C),)),
                          ],
                        ),
                      ),
                    ),),),),
            ],
          ),
        ),
      ),
    );
  }
}