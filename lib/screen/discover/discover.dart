import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sbsc_capstone_team_jupiter/screen/cart.dart';
import 'package:sbsc_capstone_team_jupiter/screen/discover/discover_search.dart';
//import 'package:sbsc_capstone_team_jupiter/screen/discover_search.dart';
import 'package:sbsc_capstone_team_jupiter/screen/menu_drawer.dart';
import 'package:sbsc_capstone_team_jupiter/screen/product_detail.dart';

// import 'cart.dart';
// import 'checkout_shipping.dart';
// import 'menu_drawer.dart';




class DiscoverGridPage extends StatefulWidget {
  final String name = "categoryPage";
  @override
  _DiscoverGridPageState createState() => _DiscoverGridPageState();
}

class _DiscoverGridPageState extends State<DiscoverGridPage> {
  List <CaregoryCard> CategotyCardList = [
    CaregoryCard(image:"assets/images/turkeybg.png",name: "Emmanuel Produce",product: 'Herbsconnect Organic Acai Berry Powder Freeze Dried',availability: 'In stock',price: '₦35,000.00'),
    CaregoryCard(image:"assets/images/seafoodfood.png",name: "Emmanuel Produce",product: 'Herbsconnect Organic Acai Berry Powder Freeze Dried',availability: 'In stock',price: '₦35,000.00'),
    CaregoryCard(image:"assets/images/sushi.png",name: "Emmanuel Produce",product: 'Herbsconnect Organic Acai Berry Powder Freeze Dried',availability: 'In stock',price: '₦35,000.00'),
    CaregoryCard(image:"assets/images/rice.png",name: "Emmanuel Produce",product: 'Herbsconnect Organic Acai Berry Powder Freeze Dried',availability: 'In stock',price: '₦35,000.00'),
    CaregoryCard(image:"assets/images/tomatoes.png",name: "Emmanuel Produce",product: 'Herbsconnect Organic Acai Berry Powder Freeze Dried',availability: 'In stock',price: '₦35,000.00'),
    CaregoryCard(image:"assets/food.png",name: "Emmanuel Produce",product: 'Herbsconnect Organic Acai Berry Powder Freeze Dried',availability: 'In stock',price: '₦35,000.00'),

  ];

  var _formKey = GlobalKey<FormState>();

  TextEditingController maxPrice = TextEditingController();
  TextEditingController minPrice = TextEditingController();


  bool showCheck = false;
final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       key: _scaffoldKey,
          drawer: MyDrawer(),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: 812,width: 375,
              child: ListView(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 24,top: 40,bottom: 17, right: 24),
                    decoration: BoxDecoration(
                      color: Color(0xffffffff),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white.withOpacity(0.1),
                          spreadRadius: 2,
                        ),
                      ],
                    ),
                    height: 142, width:375,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 35,width: 327,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                onPressed: () {
                                 _scaffoldKey.currentState.openDrawer();
                                },
                                icon: Image.asset("assets/menu.png", width: 22,height: 22,),
                              ),
                              SizedBox(width:32),
                              Container(
                                width:140,
                                child: Text(
                                  "Discover",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 24,color: Color(0xff819272)),
                                ),
                              ),
                              Spacer(),
                              //   width: 51.91,
                              // ),
                              GestureDetector(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => DiscoverSearchPage()),);
                                },
                                  child: Image.asset('assets/images/search.png',width: 16,height: 16,color: Color(0xffbababa),)),
                             Spacer(),
                              GestureDetector(
                                onTap:(){

                                  Navigator.push(context, MaterialPageRoute(builder: (context) => CartPage()),);
                                },
                                child: Container(
                                  width: 35,height: 35,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xff3A953C),
                                  ),
                                  child: Image.asset('assets/images/shop.png',width: 16.13,height: 14.36,),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.only(left: 24),
                            child: DiscoverList()),
                      ],
                    ),
                  ),
                  SizedBox(height: 32),
                  Expanded(
                    child:Container(
                      margin: EdgeInsets.symmetric(horizontal: 24),
                      child: GridView(
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        children:[
                          CaregoryCard(image:"assets/images/turkeybg.png",name: "Emmanuel Produce",product: 'Herbsconnect Organic Acai Berry Powder Freeze Dried',availability: 'In stock',price: '₦35,000.00'),
                          CaregoryCard(image:"assets/images/seafood.png",name: "Emmanuel Produce",product: 'Herbsconnect Organic Acai Berry Powder Freeze Dried',availability: 'In stock',price: '₦35,000.00'),
                          CaregoryCard(image:"assets/images/sushi.png",name: "Emmanuel Produce",product: 'Herbsconnect Organic Acai Berry Powder Freeze Dried',availability: 'In stock',price: '₦35,000.00'),
                          CaregoryCard(image:"assets/images/rice.png",name: "Emmanuel Produce",product: 'Herbsconnect Organic Acai Berry Powder Freeze Dried',availability: 'In stock',price: '₦35,000.00'),
                          CaregoryCard(image:"assets/images/tomatoes.png",name: "Emmanuel Produce",product: 'Herbsconnect Organic Acai Berry Powder Freeze Dried',availability: 'In stock',price: '₦35,000.00'),
                          CaregoryCard(image:"assets/images/paint.png",name: "Emmanuel Produce",product: 'Herbsconnect Organic Acai Berry Powder Freeze Dried',availability: 'In stock',price: '₦35,000.00'),
                          CaregoryCard(image:"assets/images/turkeybg.png",name: "Emmanuel Produce",product: 'Herbsconnect Organic Acai Berry Powder Freeze Dried',availability: 'In stock',price: '₦35,000.00'),
                        ],
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 16,
                          mainAxisSpacing: 24,
                          childAspectRatio: 0.602,
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
            // Positioned(
            //   bottom: 0,
            //   child: Center(
            //     child:Container(
            //       decoration: BoxDecoration(
            //         color: Color(0xffffffff),
            //         boxShadow: [
            //           BoxShadow(color:Color.fromRGBO(0, -2, 20, 0.1),),
            //         ],
            //       ),
            //       width: 375,
            //       height:88,
            //       child: Center(
            //         child:Container(
            //           width: 181.1,
            //           height: 21.2,
            //           child: Row(
            //             children: [
            //               GestureDetector(onTap:(){
            //                 Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()),);
            //               },child: Image.asset('assets/images/home.png',width: 16.29,height: 15.41,color: Color(0xffDEDEDE),)),
            //               Spacer(),
            //               GestureDetector(onTap:(){
            //                 Navigator.push(context, MaterialPageRoute(builder: (context) => DiscoverSearchPage()),);
            //               },child: Image.asset('assets/images/search.png',width: 21.2,height: 21.2,color: Color(0xff3A953C),)),
            //               Spacer(),
            //               GestureDetector(onTap:(){
            //                 Navigator.push(context, MaterialPageRoute(builder: (context) => MyDrawer()),);
            //               },child: Image.asset('assets/images/dialog.png',width: 21.2,height: 21.2,color: Color(0xffDEDEDE),)),
            //             ],
            //           ),
            //         ),
            //       ),),),),
          ],),
      ),
    );
  }
}


Color active = Colors.red;
Color check = Colors.deepOrange;

update(int status) {
  if (status == 1) {
    if (active == Colors.red) {
      active = Colors.grey;
    }
    else {
      active = Colors.red;
    }
  }
}


class CaregoryCard extends StatefulWidget {
  CaregoryCard({@required this.image,@required this.name,@required this.product,@required this.availability,@required this.price,});

  final String image, name,price,product,availability;

  @override
  _CaregoryCardState createState() => _CaregoryCardState();
}

class _CaregoryCardState extends State<CaregoryCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=> ProductDetails(image: widget.image, name:widget.name, product:widget.product, price:widget.price)),);
            },
            child: Container(
              margin: EdgeInsets.only(right: 16),
              height: 259,width: 156,
              child: ListView(
                children: [
                  Stack(
                    children: [Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage(widget.image), fit: BoxFit.cover),
                        borderRadius: BorderRadius.all(Radius.circular(4.0)),
                      ),
                      height: 156,
                      width: 156,
                    ),

                      Positioned(top: 10.25, right: 10.5,
                          child: GestureDetector(
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
                      ),],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    widget.name, style: TextStyle(fontWeight: FontWeight.w300, fontSize: 10,color: Color(0xff819272)),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(widget.product,style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16,color: Color(0xff000000)),),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    width: 156,
                    height: 20,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(widget.price,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13, color: Color(0xffF39E28),),),
                        Text(".",style: TextStyle( fontSize: 14, color: Color(0xffD8D8D8)),),
                        Text(widget.availability,style: TextStyle(fontSize: 13, color: Color(0xff3A953C)),),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
//
// showProdDetails(
//     context,
//     image,
//     price,
//     vendor,
//     product,
//     ) {
//   return showDialog(
//     context: context,
//     builder: (context) {
//       return Scaffold(
//         body: SingleChildScrollView(
//           child: Container(
//             width: 375,
//             height: 812,
//             color: Color(0xffffffff),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Stack(
//                   children: [
//                     Container(
//                       width: 375,
//                       height: 374,
//                       decoration: BoxDecoration(
//                         image: DecorationImage(
//                           image: AssetImage(image),
//                           fit: BoxFit.contain,
//                         ),
//                       ),
//                     ),
//                     Positioned(
//                       child: GestureDetector(
//                         onTap: () {
//                           Navigator.pop(context);
//                         },
//                         child: Image.asset(
//                           'assets/images/back.png',
//                           color: Color(0xffffffff),
//                           width: 23,
//                           height: 14,
//                         ),
//                       ),
//                       top: 40,
//                       left: 24,
//                     ),
//                   ],
//                 ),
//                 SizedBox(
//                   height: 24,
//                 ),
//                 Center(
//                   child: Container(
//                     width: 326,
//                     height: 120,
//                     child: Row(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Container(
//                           width: 249,
//                           height: 120,
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 product,
//                                 style: TextStyle(
//                                   fontSize: 24,
//                                   fontWeight: FontWeight.bold,
//                                   color: Color(0xff000000),
//                                 ),
//                               ),
//                               SizedBox(
//                                 height: 8,
//                               ),
//                               Text(
//                                 vendor,
//                                 style: TextStyle(
//                                   fontSize: 17,
//                                   color: Color(0xff819272),
//                                 ),
//                               )
//                             ],
//                           ),
//                         ),
//                         Spacer(),
//                         Image.asset('assets/images/heart.png',
//                             width: 20.01, height: 17.65),
//                       ],
//                     ),
//                   ),
//                 ),
//                 // Positioned(child:Image.asset('assets/images/heart.png',width: 20.01,height:17.65),top: 401,right: 27,),
//                 // child:Text(product,style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Color(0xff000000),),),
//                 SizedBox(
//                   height: 24,
//                 ),
//                 Center(
//                   child: Container(
//                     width: 327,
//                     child: Text(
//                       'Lal Qilla Diabetes and Obesity Basmati Rice 5kg. Using a unique technique during cultivation and processing, Lal Qilla has introduced a specially processed low G.I. parboiled rice. This remarkable rice helps rice lovers with diabetes to',
//                       style: TextStyle(
//                         fontSize: 15,
//                         fontWeight: FontWeight.w300,
//                         color: Color(0xff10151a),
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 24,
//                 ),
//                 Container(
//                   margin: EdgeInsets.only(left: 24),
//                   width: 113,
//                   height: 16,
//                   child: Row(
//                     children: [
//                       Text(
//                         'MORE DETAILS',
//                         style: TextStyle(
//                           fontSize: 13,
//                           color: Color(0xff494846),
//                         ),
//                       ),
//                       Spacer(),
//                       Image.asset('assets/images/plus.png',
//                           width: 10, height: 10),
//                     ],
//                   ),
//                 ),
//                 SizedBox(
//                   height: 45,
//                 ),
//                 Center(
//                   child: Container(
//                     height: 47,
//                     width: 327,
//                     child: Row(
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         Text(
//                           price,
//                           style: TextStyle(
//                             fontSize: 17,
//                             fontWeight: FontWeight.bold,
//                             color: Color(0xff000000),
//                           ),
//                         ),
//                         Spacer(),
//                         GestureDetector(
//                           onTap: () {},
//                           child: Container(
//                             width: 164,
//                             height: 47,
//                             decoration: BoxDecoration(
//                               color: Color(0xff3A953C),
//                               borderRadius: BorderRadius.circular(5),
//                             ),
//                             child: Center(
//                               child: Text(
//                                 'Add to Cart',
//                                 style: TextStyle(
//                                   fontSize: 16,
//                                   fontWeight: FontWeight.bold,
//                                   color: Color(0xffffffff),
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                         SizedBox(height: 33),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       );
//     },
//   );
// }

class DiscoverList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"text": "All"},  {"text": "Raw Fruits"},  {"text": "Spices"},  {"text": "Cosmetics"},  {"text": "Fruits & Vegetable"},

    ];
    return Container(
      height: 18,
      child: ListView(scrollDirection: Axis.horizontal, children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(
            categories.length,
                (index) => DiscoverCard(
              text: categories[index]["text"],
            ),
          ),
        ),
      ]),
    );
  }
}

class DiscoverCard extends StatelessWidget {
  DiscoverCard({@required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        margin: EdgeInsets.only(right: 16),
        height: 18,
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(color: Color(0xff999999), fontWeight: FontWeight.normal, fontSize: 15),
        ),
      ),
    );
  }
}