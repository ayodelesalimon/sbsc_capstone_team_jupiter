import 'dart:convert';

import 'package:flutter/material.dart';

import 'cart.dart';
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

List <CartTile> cartTileList =[
  CartTile(image:'assets/images/tomatoes.png', product:  'Herbsconnect Organic Acai Berry Powder Freeze Dried', availability:  'In stock', price:  '₦35,000.00', name:   'Emmanuel produce',),
  CartTile(image:'assets/images/paint.png', product:  'Herbsconnect Organic Acai Berry Powder Freeze Dried', availability:  'In stock', price:  '₦35,000.00', name:   'Emmanuel produce',),
  CartTile(image:'assets/images/turkey.png', product:  'Herbsconnect Organic Acai Berry Powder Freeze Dried', availability:  'In stock', price:  '₦35,000.00', name:   'Emmanuel produce',),

];


class ProductDetails extends StatefulWidget {
  ProductDetails({required this.image,required this.name,required this.product,required this.price,});

  final String image, name,price,product;
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: 375,
          height: 812,
          color: Color(0xffffffff),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    width: 375,
                    height: 374,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(widget.image),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Positioned(
                    child: GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Image.asset(
                        'assets/images/back.png',
                        color: Color(0xffffffff),
                        width: 23,
                        height: 14,
                      ),
                    ),
                    top: 40,
                    left: 24,
                  ),
                ],
              ),
              SizedBox(
                height: 24,
              ),
              Center(
                child: Container(
                  width: 326,
                  height: 120,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 249,
                        height: 120,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.product,
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff000000),
                              ),
                            ),
                            SizedBox(height: 8,),
                            Text(
                              widget.name,
                              style: TextStyle(
                                fontSize: 17,
                                color: Color(0xff819272),
                              ),
                            )
                          ],
                        ),
                      ),
                      Spacer(),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            update(1);
                          });
                        },
                        child: Image.asset('assets/images/heart.png',
                          width: 20.01, height: 17.65,
                          color: active,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // Positioned(child:Image.asset('assets/images/heart.png',width: 20.01,height:17.65),top: 401,right: 27,),
              // child:Text(product,style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Color(0xff000000),),),
              SizedBox(
                height: 24,
              ),
              Center(
                child: Container(
                  width: 327,
                  child: Text(
                    'Lal Qilla Diabetes and Obesity Basmati Rice 5kg. Using a unique technique during cultivation and processing, Lal Qilla has introduced a specially processed low G.I. parboiled rice. This remarkable rice helps rice lovers with diabetes to',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                      color: Color(0xff10151a),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 24,),
              Container(
                margin: EdgeInsets.only(left: 24),
                width: 113,
                height: 16,
                child: Row(
                  children: [
                    Text(
                      'MORE DETAILS',
                      style: TextStyle(
                        fontSize: 13,
                        color: Color(0xff494846),
                      ),
                    ),
                    Spacer(),
                    Image.asset('assets/images/plus.png', width: 10, height: 10),
                  ],
                ),
              ),
              SizedBox(
                height: 45,
              ),
              Center(
                child: Container(
                  height: 47,
                  width: 327,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        widget.price,
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff000000),
                        ),
                      ),
                      Spacer(),
                      GestureDetector(
                        onTap:(){
                          Navigator.push(context,MaterialPageRoute(builder: (context)=> CartPage()),);
                          cartTileList.add(CartTile(image:widget.image, name: widget.name, product: widget.product, price: widget.price, availability: 'In stock',));
                        },
                        child: Container(
                          width: 164,
                          height: 47,
                          decoration: BoxDecoration(
                            color: Color(0xff3A953C),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Text(
                              'Add to Cart',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0xffffffff),
                              ),
                            ),),
                        ),
                      ),
                      SizedBox(height:33),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

bool value = true;
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
                      Container(
                        width:32,
                        height: 32,
                        color: Color(0xfff5f5f5),
                        child: Center(
                          child: Image.asset('assets/images/bin.png',width: 12,height: 14,color: Color(0xff979797,),
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
