import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sbsc_capstone_team_jupiter/checkout.dart';
import 'package:sbsc_capstone_team_jupiter/discover.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

// Future<CartItem> fetchCartList() async {
//   final response = await http.get(
//     Uri.parse('https://aduabaecommerceapi.azurewebsites.net/index.html/Cart​/get-cart-items'),
//   );
//
//   if (response.statusCode == 200) {
//     // If the server did return a 200 OK response, then parse the JSON.
//     return CartItem.fromJson(jsonDecode(response.body));
//   } else {
//     // If the server did not return a 200 OK response, then throw an exception.
//     throw Exception('Failed to load cart list.');
//
//   }
// }

class ApiHelper {
  static String baseEndpoint = 'http://aduabaecommerceapi.azurewebsites.net';

  static Future<List<CartItemList>> getAllCart() async {
    List<CartItemList> cartItemList = [];
    String url = '$baseEndpoint/Cart​/get-cart-items';

   http.Response _response = await http.get(Uri.parse(url));
    print(_response.body);

    List decodedResponse = jsonDecode(_response.body);
    cartItemList =
        decodedResponse.map((json) => CartItemList.fromJson(json)).toList();
    return cartItemList;
  }

}


class CartItemList {
   String? userId;
   String? productId;
   int? quantity;
   String? productName;
   String? productDescription;
   String? productUnitPrice;
   String? productImage;
   String? status;
   String? supplierName;

  CartItemList({this.userId, this.productId,this.quantity, this.productDescription,this.productImage, this.productName, this.productUnitPrice, this.status, this.supplierName });

  factory CartItemList.fromJson(Map<String, dynamic> json) {
    return CartItemList(
      userId: json['userId'],
        productId: json['productId'],
        quantity: json['quantity'],
        productName: json['productName'],
     productDescription:json['productDescription'],
    productUnitPrice: json['productUnitPrice'],
        productImage: json['productImage'],
        status: json['status'],
         supplierName:json['supplierName'],
    );
  }
}


Future<CartItem> deleteCartItem(String itemId) async {
  final http.Response response = await http.delete(
    Uri.parse('https://aduabaecommerceapi.azurewebsites.net/index.html/Cart/remove-cart-item$itemId'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
  );

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON. After deleting,
    // you'll get an empty JSON `{}` response.
    // Don't return `null`, otherwise `snapshot.hasData`
    // will always return false on `FutureBuilder`.
    return CartItem.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a "200 OK response",
    // then throw an exception.
    throw Exception('Failed to delete cartItem.');
  }
}





// 'https://aduabaecommerceapi.azurewebsites.net/index.html/Cart​/get-cart-items

class CartItem {
  final String? itemId;


 CartItem({this.itemId});

  factory CartItem.fromJson(Map<String, dynamic> json) {
    return CartItem(
      itemId: json['itemId'],

    );
  }
}

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {

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
    'assets/images/tomatoes.png',
    'assets/images/paint.png',
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
  late Future<CartItem> _futureCartItem;

  bool _isLoading = true;
  List<CartItemList> cartItemList = [];
  Future<List<CartItemList>> getAllCart() async {
    cartItemList = await ApiHelper.getAllCart();
    setState(() {
      _isLoading = false;
    });

    return cartItemList;
  }

  @override
  void initState() {
    super.initState();
    getAllCart();
  }


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
                        onTap:(){
                          Navigator.pop(context);
                        },
                        child: Image.asset(
                          'assets/images/back.png',
                          width: 23,
                          height: 14,
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Container(
                          width: 140,
                          height: 29,
                          child: Text(
                            'Cart',
                            style: TextStyle(
                                fontSize: 24,
                                color: Color(0xff819272),
                                fontWeight: FontWeight.bold),
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 327,
                        height: 16,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
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
                            SizedBox(
                              width: 51.8,
                            ),
                            Container(
                              width: 69.2,
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/images/pick.png',
                                    width: 11.2,
                                    height: 11.2,
                                    color: Color(0xff999999),
                                  ),
                                  SizedBox(width:4),
                                  Text(
                                    'Select All',
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: Color(0xff999999),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Spacer(),
                            Container(
                              width: 108,
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/images/bin.png',
                                    width: 11,
                                    height: 12,
                                    color: Color(0xff999999),
                                  ),
                                  SizedBox(width:4),
                                  Text(
                                    'Delete Selected',
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: Color(0xff999999),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
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
                        height:386,
                        margin: EdgeInsets.symmetric(horizontal: 24),
                        child: ListView.separated(
                          itemCount: cartItemList.length,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: (){

                              },
                              child: Container(
                                width: 327,
                                height: 152,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset('assets/images/check.png',width: 16,height: 16,),
                                    SizedBox(width: 12,),
                                    Container(
                                      width: 210,
                                      height: 152,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: 210,
                                            child: Text(cartItemList[index].productDescription!,
                                              style: TextStyle(fontSize: 17,color: Color(0xff424347),fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          SizedBox(height:8),
                                          Text(cartItemList[index].supplierName!,style: TextStyle(fontSize: 13,color: Color(0xffbbbbbb),fontWeight: FontWeight.normal),),
                                          SizedBox(height:8),
                                          Container(
                                            width:148,
                                            height: 20,
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                Text(cartItemList[index].productUnitPrice!,style: TextStyle(fontSize: 15,color: Color(0xffF39E28),fontWeight: FontWeight.normal),),
                                                Container(width:14 ,child: Text('.',style: TextStyle(fontSize: 14,color: Color(0xffD8D8D8),fontWeight: FontWeight.w600,),)),
                                                Text(cartItemList[index].status!,style: TextStyle(fontSize: 15,color: Color(0xff3A953C),),),
                                              ],
                                            ),
                                          ),
                                          Spacer(),
                                          Container(
                                            width: 136,
                                            height: 32,
                                            child: Row(
                                              mainAxisAlignment:MainAxisAlignment.start,
                                              children: [
                                                Container(
                                                  width:32,
                                                  height: 32,
                                                  color: Color(0xfff5f5f5),
                                                  child: Center(
                                                    child: Image.asset('assets/images/minus.png',width: 8,height: 2,color: Color(0xffbbbbbb),),
                                                  ),
                                                ),
                                                Container(
                                                  width:32,
                                                  height: 32,
                                                  color: Color(0xfff5f5f5),
                                                  child: Center(
                                                    child: Text(cartItemList[index].quantity.toString(), style: TextStyle(
                                                      fontSize: 8, color: Color(0xffbbbbbb),
                                                    ),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  width:32,
                                                  height: 32,
                                                  color: Color(0xfff5f5f5),
                                                  child: Center(
                                                    child: Image.asset('assets/images/plus.png',width: 6,height: 15,color: Color(0xff979797),),
                                                  ),
                                                ),
                                                Spacer(),
                                                FutureBuilder<CartItem>(
                                                  future: _futureCartItem,
                                                  builder: (context, snapshot) {
                                                    if (snapshot.connectionState == ConnectionState.done) {
                                                     if (snapshot.hasData) {
                                                       return  GestureDetector(
                                                         onTap: () {
                                                           setState(() {
                                                             _futureCartItem =
                                                                 deleteCartItem(snapshot.data!.itemId.toString());
                                                           });
                                                         },
                                                         child: Container(
                                                           width:32,
                                                           height: 32,
                                                           color: Color(0xfff5f5f5),
                                                           child: Center(
                                                             child: Image.asset('assets/images/bin.png',width: 12,height: 14,color: Color(0xff979797,),
                                                             ),
                                                           ),
                                                         ),
                                                       );
                                                     }
                                                    }
                                                      else if (snapshot.hasError) {
                                                      return Text("${snapshot.error}");
                                                    }
                                                    return CircularProgressIndicator(
                                                      color: Colors.red,
                                                      strokeWidth: 4,
                                                    );
                                                  },
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
                SizedBox(height:61),
                Center(
                  child: Container(
                    width: 327,
                    height:22,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Total 2 Items',style: TextStyle(color: Color(0xff000000),fontSize: 13),),
                        Text('₦35,000.00 ',style: TextStyle(color: Color(0xff000000),fontSize: 17, fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),
                ),
                SizedBox(height:32),
                Center(
                  child: GestureDetector(
                    onTap:(){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=> CheckoutPage()),);
                    },
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
                SizedBox(height:16),
                Center(
                  child: GestureDetector(
                    onTap:(){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=> DiscoverGridPage()),);
                    },
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
                SizedBox(height:38),
              ],
            ),
          ),
        ),
      ),
    );
  }
}