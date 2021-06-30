import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sbsc_capstone_team_jupiter/constants.dart';


class CartPage extends StatefulWidget {
  final String name = 'cartPage';
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {

   bool valuefirst = false;  
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
    'assets/fruit.png',
    'assets/fruit.png',
    'assets/drugs.png',
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: 375,
            height: 812,
            color: Color(0xffffffff),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 24.0, right: 14.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: IconButton(icon: Icon(Icons.arrow_back), onPressed: (){})
                      ),
                     
                      Text(
                        'Cart',
                        style: TextStyle(
                            fontSize: 24,
                            color: Color(0xff819272),
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                              '18 items listed',
                              style: TextStyle(
                                fontSize: 13,
                                color: Color(0xff999999),
                              ),
                            ),

                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IconButton(icon: Icon(Icons.done), onPressed: (){}),
                                  //SizedBox(width: -10),
                                   Text(
                                  'Select All',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Color(0xff999999),
                                  ),
                                ),
                                ],
                              ),
                               IconButton(icon: Icon(Icons.delete_outline_outlined), onPressed: (){}),
                              //  SizedBox(width: 4),
                             Text(
                               'Delete Selected',
                               style: TextStyle(
                                 fontSize: 13,
                                 color: Color(0xff999999),
                               ),
                             ),
                               SizedBox(width: 2),
                               
                      ],),
                      // Center(
                      //   child: Row(
                      //     mainAxisAlignment: MainAxisAlignment.center,
                      //     children: [
                      //       Text(
                      //         '18 items listed',
                      //         style: TextStyle(
                      //           fontSize: 13,
                      //           color: Color(0xff999999),
                      //         ),
                      //       ),
                      //       SizedBox(
                      //         width: 10.8,
                      //       ),
                           
                      //          IconButton(icon: Icon(Icons.done), onPressed: (){}),
                      //          // SizedBox(width: 2),
                      //           Text(
                      //             'Select All',
                      //             style: TextStyle(
                      //               fontSize: 13,
                      //               color: Color(0xff999999),
                      //             ),
                      //           ),
                          
                           
                      //       IconButton(icon: Icon(Icons.delete_outline_outlined), onPressed: (){}),
                      //         //  SizedBox(width: 4),
                      //        Text(
                      //          'Delete Selected',
                      //          style: TextStyle(
                      //            fontSize: 13,
                      //            color: Color(0xff999999),
                      //          ),
                      //        ),
                      //     ],
                      //   ),
                      // ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                Expanded(
                  child: Center(
                    child: Container(
                      width: 327,
                      height: 386,
                      margin: EdgeInsets.symmetric(horizontal: 24),
                      child: ListView.separated(
                        itemCount: imageList.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {},
                            child: Container(
                              width: 327,
                              height: 152,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  ///check box
                                 Checkbox(  
                      checkColor: Colors.greenAccent,  
                      activeColor: Colors.red,  
                      value: this.valuefirst,  
                      onChanged: (bool value) {  
                        setState(() {  
                          this.valuefirst = value;  
                        });  
                      },  
                    ),  
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Container(
                                    width: 210,
                                    height: 152,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 210,
                                          child: Text(
                                            productList[index],
                                            style: TextStyle(
                                                fontSize: 17,
                                                color: Color(0xff424347),
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        SizedBox(height: 8),
                                        Text(
                                          vendorList[index],
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Color(0xffbbbbbb),
                                              fontWeight: FontWeight.normal),
                                        ),
                                        SizedBox(height: 8),
                                        Container(
                                          width: 148,
                                          height: 20,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                priceList[index],
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color: Color(0xffF39E28),
                                                    fontWeight:
                                                        FontWeight.normal),
                                              ),
                                              Container(
                                                  width: 14,
                                                  child: Text(
                                                    '.',
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                      color: Color(0xffD8D8D8),
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                  )),
                                              Text(
                                                stockList[index],
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  color: Color(0xff3A953C),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Spacer(),
                                        Container(
                                          width: 136,
                                          height: 32,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                width: 32,
                                                height: 32,
                                                color: Color(0xfff5f5f5),
                                                child: Center(
                                                  child: IconButton(icon: Icon(Icons.add), onPressed: (){})
                                                ),
                                              ),
                                              Container(
                                                width: 32,
                                                height: 32,
                                                color: Color(0xfff5f5f5),
                                                child: Center(
                                                  child: Image.asset(
                                                    'assets/images/1.png',
                                                    width: 8,
                                                    height: 2,
                                                    color: Color(0xffbbbbbb),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                width: 32,
                                                height: 32,
                                                color: Color(0xfff5f5f5),
                                                child: Center(
                                                  child: IconButton(icon: Icon(Icons.remove), onPressed: (){})
                                                ),
                                              ),
                                              Spacer(),
                                              Container(
                                                width: 32,
                                                height: 32,
                                                color: Color(0xfff5f5f5),
                                                child: Center(
                                                  child: IconButton(icon: Icon(Icons.delete_outline_outlined), onPressed: (){})
                                                ),
                                              ),
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

                            // child: Row(
                            //   mainAxisAlignment: MainAxisAlignment.start,
                            //   children: [
                            //     Column(
                            //       mainAxisAlignment: MainAxisAlignment.start,
                            //       children: [
                            //         Container(
                            //           height: 82,
                            //           width: 75,
                            //           child: Image.asset(imageList[index]),
                            //         ),
                            //       ],
                            //     ),
                            //     Spacer(),
                            //     Container(
                            //       width: 224,
                            //       height: 82,
                            //       child: Column(
                            //         crossAxisAlignment:
                            //         CrossAxisAlignment.start,
                            //         children: [
                            //           Text(
                            //             productList[index],
                            //             style: TextStyle(
                            //               color: Color(0xff10151A),
                            //               fontSize: 15,
                            //             ),
                            //           ),
                            //           Spacer(),
                            //           Text(
                            //             vendorList[index],
                            //             style: TextStyle(
                            //               color: Color(0xffbbbbbb),
                            //               fontSize: 13,
                            //             ),
                            //           ),
                            //           Spacer(),
                            //           Container(
                            //             width: 156,
                            //             child: Row(
                            //               children: [
                            //                 Text(
                            //                   priceList[index],
                            //                   style: TextStyle(
                            //                     color: Color(0xffF39E28),
                            //                     fontSize: 13,
                            //                     fontWeight: FontWeight.bold,
                            //                   ),
                            //                 ),
                            //                 Spacer(),
                            //                 Text('.'),
                            //                 Spacer(),
                            //                 Text(
                            //                   stockList[index],
                            //                   style: TextStyle(
                            //                     color: Color(0xff3A953C),
                            //                     fontSize: 15,
                            //                   ),
                            //                 ),
                            //               ],
                            //             ),
                            //           ),
                            //         ],
                            //       ),
                            //     ),
                            //   ],
                            // ),
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
                SizedBox(height: 61),

               
                Center(
                  child: Container(
                    width: 327,
                    height: 22,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total 2 Items',
                          style:
                              TextStyle(color: Color(0xff000000), fontSize: 13),
                        ),
                        Text(
                          '₦35,000.00 ',
                          style: TextStyle(
                              color: Color(0xff000000),
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 32),
                Center(
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xff3A953C),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Text(
                          'Proceed to Checkout',
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
                SizedBox(height: 16),
                Center(
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xffe5e5e5),
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          width: 1,
                          color: Color(0xff10151A),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Continue Shopping',
                          style: TextStyle(
                              color: Color(0xff10151A),
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
                SizedBox(height: 38),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
