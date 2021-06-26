import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WishListPage extends StatefulWidget {
  @override
  _WishListPageState createState() => _WishListPageState();
}

class _WishListPageState extends State<WishListPage> {
  var productList = [
    'Herbsconnect Organic Acai Berry Powder Freeze Dried',
    'Herbsconnect Organic Acai Berry Powder Freeze Dried',
    'Herbsconnect Organic Acai Berry Powder Freeze Dried',
    'Herbsconnect Organic Acai Berry Powder Freeze Dried',
    'Herbsconnect Organic Acai Berry Powder Freeze Dried',
    'Herbsconnect Organic Acai Berry Powder Freeze Dried',

  ];
  var vendorList = [
    'Emmanuel produce',
    'Emmanuel produce',
    'Emmanuel produce',
    'Emmanuel produce',
    'Emmanuel produce',
    'Emmanuel produce',

  ];
  var imageList = [
    'assets/images/item1.png',
    'assets/images/item1.png',
    'assets/images/item1.png',
    'assets/images/item1.png',
    'assets/images/item1.png',
    'assets/images/item1.png',
  ];
  var priceList = [
    '₦35,000.00',
    '₦35,000.00',
    '₦35,000.00',
    '₦35,000.00',
    '₦35,000.00',
    '₦35,000.00',

  ];
  var stockList = [

    'In stock',
    'In stock',
    'In stock',
    'In stock',
    'In stock',
    'In stock',

  ];
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
                SizedBox(height: 32),
                Center(
                  child: Container(
                    width: 327,
                    height: 500,
                    margin: EdgeInsets.symmetric(horizontal: 24),
                    child: ListView.separated(
                      itemCount: imageList.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: (){

                          },
                          child: Center(
                            child: Container(
                              width: 326,
                              height: 82,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(imageList[index],width: 75,height: 78,),
                                  SizedBox(width: 16,),
                                  Container(
                                    width: 198,
                                    height: 82,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 198,
                                          child: Text(productList[index],
                                            style: TextStyle(fontSize: 15,color: Color(0xff000000),fontWeight: FontWeight.normal),
                                          ),
                                        ),
                                        SizedBox(height:5),
                                        Text(vendorList[index],style: TextStyle(fontSize: 13,color: Color(0xffbbbbbb),fontWeight: FontWeight.normal),),
                                        SizedBox(height:5),
                                        Container(
                                          width:156,
                                          height: 20,
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Text(priceList[index],style: TextStyle(fontSize: 13,color: Color(0xffF39E28),fontWeight: FontWeight.bold),),
                                              Container(width:14 ,child: Text('.',style: TextStyle(fontSize: 14,color: Color(0xffD8D8D8),fontWeight: FontWeight.w600,),)),
                                              Text(stockList[index],style: TextStyle(fontSize: 15,color: Color(0xff3A953C),),),
                                            ],
                                          ),
                                        ),
                                ],
                              ),
                            ),
                                  Spacer(),
                                 GestureDetector(
                                   onTap:(){},
                                   child:Container(
                                    width:20,
                                    height: 20,
                                    child: Center(
                                      child: Image.asset('assets/images/bin.png', width: 11.67, height: 11.67,color: Color(0xff000000),),
                                    ),
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
                          padding: EdgeInsets.symmetric(vertical: 24),
                          child: Divider(
                            thickness: 1,
                            color: Color(0xfff5f5f5),
                          ),
                        );
                      },
                    ),
                  ),
                ),

                Center(
                  child: Container(
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
                            GestureDetector(onTap:(){},child: Image.asset('assets/images/dialog.png',width: 21.2,height: 21.2,color: Color(0xffDEDEDE),)),
                          ],
                        ),
                      ),
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
