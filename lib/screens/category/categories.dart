import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum Button{
  home, search, menu,
}
class CategoryPage extends StatefulWidget {
  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  var categoryList = [
    'Raw Fruits',
    'Raw Fruits',
    'Raw Fruits',
    'Raw Fruits',
    'Raw Fruits',
    'Raw Fruits',
    'Raw Fruits',
    'Raw Fruits',

  ];
  var imageList = [
    'assets/images/turkey.png',
    'assets/images/boxheadset.png',
    'assets/images/boxheadset.png',
    'assets/images/boxheadset.png',
    'assets/images/boxheadset.png',
    'assets/images/boxheadset.png',
    'assets/images/boxheadset.png',
  ];
  var quantityList = [
    '234 Items',
    '234 Items',
    '234 Items',
    '234 Items',
    '234 Items',
    '234 Items',
    '234 Items',
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        // child: SingleChildScrollView(
        child: Stack(
          children: [
          SafeArea(
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
                    height: 154,
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
                      mainAxisAlignment:MainAxisAlignment.spaceBetween,
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

                        Container(
                            width: 327,
                            height: 35,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                               child: Text('Categories',
                                  style:TextStyle(color: Color(0xff819272),fontSize: 24, fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                width: 35,
                                height: 35,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xff3A953C),
                                ),
                                child: Center(
                                  child:
                                Image.asset('assets/images/cartout.png',width: 16.13,height: 14.36,color: Color(0xffffffff),),
                              ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 84,
                          child: Text(
                            '23 Categories',
                            style: TextStyle(
                              fontSize: 13,
                              color: Color(0xff999999),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 38),
                  Center(
                    child: Container(
                      width: 327,
                      height: 536,
                      margin: EdgeInsets.symmetric(horizontal: 24),
                      child: ListView.separated(
                        itemCount: imageList.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: (){

                            },
                            child: Center(
                              child: Container(
                                width: 327,
                                height: 60,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset(imageList[index],width: 60,height: 60,),
                                    SizedBox(width: 16,),
                                    Center(
                                      child: Container(
                                        width: 224,
                                        height: 42,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              width: 224,
                                              child: Text(categoryList[index],
                                                style: TextStyle(fontSize: 15,color: Color(0xff000000),fontWeight: FontWeight.bold),
                                              ),
                                            ),

                                            Container(width:58 ,child: Text(quantityList[index],style: TextStyle(fontSize: 13,color: Color(0xffbbbbbb),fontWeight: FontWeight.normal),)),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Spacer(),
                                    GestureDetector(
                                      onTap:(){},
                                      child:Center(
                                        child: Image.asset('assets/images/forward.png', width: 9.41, height: 16,color: Color(0xff000000),),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(vertical: 16),
                            child: Divider(
                              thickness: 1,
                              color: Color(0xfff5f5f5),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
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
                          GestureDetector(onTap:(){},child: Image.asset('assets/images/home.png',width: 16.29,height: 15.41,color: Color(0xff3A953C),)),
                          Spacer(),
                          GestureDetector(onTap:(){},child: Image.asset('assets/images/search.png',width: 21.2,height: 21.2,color: Color(0xffDEDEDE),)),
                          Spacer(),
                          GestureDetector(onTap:(){},child: Image.asset('assets/images/dialog.png',width: 21.2,height: 21.2,color: Color(0xffDEDEDE),)),
                        ],
                      ),
                    ),
                  ),),),),
          ],
        ),
      ),
    );
  }
}
