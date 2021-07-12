import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sbsc_capstone_team_jupiter/screen/checkout_shipping.dart';
//import 'package:sbsc_capstone_team_jupiter/screen/account_shipping.dart';

class CheckoutPage extends StatefulWidget {
  @override
  _CheckoutPageState createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  var productList = [
    'Herbsconnect Organic Acai Berry Powder Freeze Dried',
    'Herbsconnect Organic Acai Berry Powder Freeze Dried',
    'Herbsconnect Organic Acai Berry Powder Freeze Dried',

  ];
  var vendorList = [
    'Emmanuel produce',
    'Emmanuel produce',
    'Emmanuel produce',
  ];
  var imageList = [
    'assets/images/carrot.png',
    'assets/images/nailpaint.png',
    'assets/images/turkey.png',
  ];
  var priceList = [
    '₦35,000.00',
    '₦35,000.00',
    '₦35,000.00',
  ];
  var stockList = [
    'In stock',
    'In stock',
    'In stock',
  ];

  var quantityList = [
    '5',
    '5',
    '10',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width:375,
            height:812,
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
                        color: Color.fromRGBO(0, 2, 20, 0.1),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap:(){
                          Navigator.pop(context);
                        },
                        child: Image.asset(
                          'assets/images/back.png',
                          width: 23,
                          height: 14,
                        ),
                      ),
                      // SizedBox(
                      //   height: 16,
                      // ),
                      Container(
                        width: 140,
                        height: 29,
                        child: Text(
                          'Checkout',
                          style: TextStyle(
                              fontSize: 24,
                              color: Color(0xff819272),
                              fontWeight: FontWeight.bold),
                        ),),
                    ],
                  ),
                ),
                SizedBox(
                  height: 51,
                ),
                Expanded(
                  child: Center(
                    child: Container(
                      width: 327,
                      height:328,
                      margin: EdgeInsets.symmetric(horizontal: 24),
                      child: ListView.separated(
                        itemCount: imageList.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: (){

                            },
                            child: Container(
                              width: 327,
                              height: 116,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 238,
                                    height: 116,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 238,
                                          child: Text(productList[index],
                                            style: TextStyle(fontSize: 17,color: Color(0xff424347),fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        SizedBox(height:8),
                                        Text(vendorList[index],style: TextStyle(fontSize: 13,color: Color(0xffbbbbbb),fontWeight: FontWeight.normal),),
                                        SizedBox(height:8),
                                        Text('Quantity: ${quantityList[index]}',style: TextStyle(fontSize: 13,color: Color(0xffbbbbbb),fontWeight: FontWeight.normal),),
                                        Spacer(),
                                        Container(
                                          width:148,
                                          height: 20,
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Text(priceList[index],style: TextStyle(fontSize: 15,color: Color(0xffF39E28),fontWeight: FontWeight.normal),),
                                              Container(width:14 ,child: Text('.',style: TextStyle(fontSize: 14,color: Color(0xffD8D8D8),fontWeight: FontWeight.w600,),)),
                                              Text(stockList[index],style: TextStyle(fontSize: 15,color: Color(0xff3A953C),),),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Spacer(),
                                  Expanded(
                                    child: Container(
                                      width: 78,
                                      child: Image.asset(imageList[index]),
                                    ),
                                  ),
                                ],
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
                ),
                SizedBox(height:40),
                Center(
                  child: Container(
                    width: 327,
                    height:64,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Order',style: TextStyle(fontSize: 13,color: Color(0xff000000),fontWeight: FontWeight.normal),),
                            Text('Delivery',style: TextStyle(fontSize: 13,color: Color(0xff000000),fontWeight: FontWeight.normal),),
                            Text('Summary',style: TextStyle(fontSize: 17,color: Color(0xff000000),fontWeight: FontWeight.bold),),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text('₦35,000.00',style: TextStyle(fontSize: 13,color: Color(0xff000000),fontWeight: FontWeight.normal),),
                            Text('₦350.00',style: TextStyle(fontSize: 13,color: Color(0xff000000),fontWeight: FontWeight.normal),),
                            Text('₦35,350.00',style: TextStyle(fontSize: 17,color: Color(0xff000000),fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height:40),
                Center(
                  child: GestureDetector(
                    onTap:(){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=> ShippingPage()),);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xff3A953C),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Text(
                          'Continue',
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
          ),
        ),
      ),
    );
  }
}