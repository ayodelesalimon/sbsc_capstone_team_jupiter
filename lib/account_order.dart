

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sbsc_capstone_team_jupiter/order_summary.dart';
import 'package:sbsc_capstone_team_jupiter/home.dart';
import 'package:sbsc_capstone_team_jupiter/discover_search.dart';
import 'package:sbsc_capstone_team_jupiter/menu_drawer.dart';

enum Button{
  home, search, menu,
}
class OrdersPage extends StatefulWidget {
  @override
  _OrdersPageState createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {

  var orderIDList = [
    ' Order #: 341924186',
    ' Order #: 341924186',
    ' Order #: 341924186',
    ' Order #: 341924186',
    ' Order #: 341924186',
    ' Order #: 341924186',
    ' Order #: 341924186',
  ];
  var imageList = [
    'assets/images/item1.png',
    'assets/images/item1.png',
    'assets/images/item1.png',
    'assets/images/item1.png',
    'assets/images/item1.png',
    'assets/images/item1.png',
    'assets/images/item1.png',
  ];
  var purchaseDateList = [
    ' On 22 January, 2020 1:15 pm',
    ' On 22 January, 2020 1:15 pm',
    ' On 22 January, 2020 1:15 pm',
    ' On 22 January, 2020 1:15 pm',
    ' On 22 January, 2020 1:15 pm',
    ' On 22 January, 2020 1:15 pm',
    ' On 22 January, 2020 1:15 pm',
  ];

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
                          GestureDetector(
                            onTap: (){
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
                              width: 140,
                              height: 29,
                              child: Text(
                                'My Orders',
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
                    SizedBox(height: 48),
                    Center(
                      child: Container(
                        width: 327,
                        height: 500,
                        margin: EdgeInsets.symmetric(horizontal: 24),
                        child: ListView(
                          children: [
                            orderCard( context,imageList[0],orderIDList[0],'Estimated Delivery Date on 21 Dec', purchaseDateList[0], 0xffF2902F),
                            orderCard( context,imageList[1],orderIDList[1],'Cancelled', purchaseDateList[1], 0xffBB2F48),
                            orderCard(context, imageList[2],orderIDList[2],'Delivered on 31 Dec', purchaseDateList[2], 0xff3A953C),
                            orderCard( context,imageList[3],orderIDList[3],'Estimated Delivery Date on 21 Dec', purchaseDateList[3], 0xffF2902F),
                            orderCard( context,imageList[4],orderIDList[4],'Estimated Delivery Date on 21 Dec', purchaseDateList[4], 0xffF2902F),
                            orderCard(context, imageList[5],orderIDList[5],'Estimated Delivery Date on 21 Dec', purchaseDateList[5], 0xffF2902F),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 1,),
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
                            GestureDetector(onTap:(){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()),);
                            },child: Image.asset('assets/images/home.png',width: 16.29,height: 15.41,color: Color(0xffDEDEDE),)),
                            Spacer(),
                            GestureDetector(onTap:(){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => DiscoverSearchPage()),);
                            },child: Image.asset('assets/images/search.png',width: 21.2,height: 21.2,color: Color(0xffDEDEDE),)),
                            Spacer(),
                            GestureDetector(onTap:(){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => MyDrawer()),);
                            },child: Image.asset('assets/images/dialog.png',width: 21.2,height: 21.2,color:  Color(0xff3A953C),)),
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

orderCard (
    context,
    String image,
    String  orderID,
    String  deliveryStatus,
    String  purchaseDate,
    int  color,
    ) {
  return Container(
    width: 316,
    // height: 78,
    child: Column(
      children:[
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => TrackOrderPage()),);
            },
                child: Image.asset(image,width: 75,height: 78,),
            ),
            Container(
              width: 225,
              height: 78,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 224,
                    child: Text(orderID,
                      style: TextStyle(fontSize: 15,color: Color(0xff000000),fontWeight: FontWeight.normal),
                    ),
                  ),
                  SizedBox(height:5),
                  Text(purchaseDate,style: TextStyle(fontSize:13,color: Color(0xffbbbbbb),fontWeight:FontWeight.normal),),
                  SizedBox(height:21),
                  Expanded(
                    child: Container(
                      width:225,
                      child: Text(deliveryStatus,style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal, color:Color(color),),),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 24),
          child: Divider(
            thickness: 1,
            color: Color(0xfff5f5f5),
          ),
        ),
      ],
    ),
  );
}

