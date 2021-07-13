import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sbsc_capstone_team_jupiter/checkout.dart';
import 'package:sbsc_capstone_team_jupiter/discover.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:sbsc_capstone_team_jupiter/product_detail.dart';



Color active = Colors.red;
Color check = Colors.deepOrange;

update(int status) {
  if (status == 1) {
    if (active == Colors.red) {
      active = Colors.white60;
    }
    else {
      active = Colors.red;
    }
  }
}


change(int status) {
  if (status == 1) {
    if (check == Colors.deepOrange) {
      check = Colors.grey;
    }
    else {
      check = Colors.deepOrange;
    }
  }
}


class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {

  List <CartTile> cartTileList =[
     CartTile(image:'assets/images/tomatoes.png', product:  'Herbsconnect Organic Acai Berry Powder Freeze Dried', availability:  'In stock', price:  '₦35,000.00', name:   'Emmanuel produce',),
    CartTile(image:'assets/images/paint.png', product:  'Herbsconnect Organic Acai Berry Powder Freeze Dried', availability:  'In stock', price:  '₦35,000.00', name:   'Emmanuel produce',),
    CartTile(image:'assets/images/turkey.png', product:  'Herbsconnect Organic Acai Berry Powder Freeze Dried', availability:  'In stock', price:  '₦35,000.00', name:   'Emmanuel produce',),

  ];

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
  // late Future<CartItem> _futureCartItem;
  //
  // bool _isLoading = true;
  // List<CartItemList> cartItemList = [];
  // Future<List<CartItemList>> getAllCart() async {
  //   cartItemList = await ApiHelper.getAllCart();
  //   setState(() {
  //     _isLoading = false;
  //   });
  //
  //   return cartItemList;
  // }
  //
  // late Future<CartTotal> futureCartTotal;
  //

  @override
  void initState() {
    super.initState();
    // getAllCart();
    // futureCartTotal = fetchCartTotal();
  }

  int quantity = 1;

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
                        itemCount: imageList.length,
                        itemBuilder: (context, index) {
                          return CartTile(image: imageList[index], name:vendorList[index], product: productList[index], availability:stockList[index] , price: priceList[index]);
                          // return CartTile(image: cartItemList[index].productImage!,price: cartItemList[index].productUnitPrice!,name:cartItemList[index].supplierName!,availability: cartItemList[index].status!,product: cartItemList[index].productName!,);
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
                    child:Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(imageList.length.toString(),style: TextStyle(color: Color(0xff000000),fontSize: 13),),
                              Text('N35,000.00',style: TextStyle(color: Color(0xff000000),fontSize: 17, fontWeight: FontWeight.bold),),
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

class CartTile extends StatefulWidget {

  CartTile({required this.image,required this.name,required this.product,required this.availability,required this.price,});

  final String image, name,price,product,availability;
  @override
  _CartTileState createState() => _CartTileState();
}

class _CartTileState extends State<CartTile> {

  int quantity = 1;

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
  //
  // late Future<CartItem> _futureCartItem;
  //
  // bool _isLoading = true;
  // List<CartItemList> cartItemList = [];
  // Future<List<CartItemList>> getAllCart() async {
  //   cartItemList = await ApiHelper.getAllCart();
  //   setState(() {
  //     _isLoading = false;
  //   });
  //
  //   return cartItemList;
  // }
  //
  // late Future<CartTotal> futureCartTotal;
  //
  //
  // @override
  // void initState() {
  //   super.initState();
  //   getAllCart();
  //   futureCartTotal = fetchCartTotal();
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 327,
      height: 152,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(onTap:(){
            setState(() {
              change(1);
            });
          },
            child: Container(
              width:16, height:16,color: check,
              child: Image.asset( 'assets/images/mark.png',width: 10,height: 10, color: Colors.white,),),),
          SizedBox(width: 12,),
          Container(
            width: 210,
            height: 152,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 210,
                  child: Text(widget.product,
                    style: TextStyle(fontSize: 17,color: Color(0xff424347),fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height:8),
                Text(widget.name,style: TextStyle(fontSize: 13,color: Color(0xffbbbbbb),fontWeight: FontWeight.normal),),
                SizedBox(height:8),
                Container(
                  width:148,
                  height: 20,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(widget.price,style: TextStyle(fontSize: 15,color: Color(0xffF39E28),fontWeight: FontWeight.normal),),
                      Container(width:14 ,child: Text('.',style: TextStyle(fontSize: 14,color: Color(0xffD8D8D8),fontWeight: FontWeight.w600,),)),
                      Text(widget.availability,style: TextStyle(fontSize: 15,color: Color(0xff3A953C),),),
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
                      GestureDetector(
                        onTap:(){
                          setState(() {
                            quantity--;
                          });
                        },
                        child: Container(
                          width:32,
                          height: 32,
                          color: Color(0xfff5f5f5),
                          child: Center(
                            child: Image.asset('assets/images/minus.png',width: 8,height: 2,color: Color(0xffbbbbbb),),
                          ),
                        ),
                      ),
                      Container(
                        width:32,
                        height: 32,
                        color: Color(0xfff5f5f5),
                        child: Center(
                          child: Text(quantity.toString(),style: TextStyle(color: Color(0xffbbbbbb),fontSize: 16),),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            quantity++;
                          });
                        },
                        child: Container(
                          width:32,
                          height: 32,
                          color: Color(0xfff5f5f5),
                          child: Center(
                            child: Image.asset('assets/images/plus.png',width: 6,height: 15,color: Color(0xff979797),),

                          ),
                        ),
                      ),
                      Spacer(),
                      GestureDetector(
                        onTap: (){
                          cartTileList.remove(CartTile(image:widget.image, name: widget.name, product: widget.product, price: widget.price, availability: 'In stock',));
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
              child: Image.asset(widget.image),
            ),
          ),
        ],
      ),
    );
  }
}
