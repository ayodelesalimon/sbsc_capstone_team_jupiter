import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DiscoverSearchPage extends StatefulWidget {
  @override
  _DiscoverSearchPageState createState() => _DiscoverSearchPageState();
}

class _DiscoverSearchPageState extends State<DiscoverSearchPage> {
  // List <ItemCard> items = [];
  // void removeCartItem(int index){
  //   setState(() {
  //     items.removeAt(index);
  //   });
  // }
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
    'assets/images/item1.png',
    'assets/images/item2.png',
    'assets/images/item3.png',
  ];
  var priceList = [
    'N35,000.00',
    'N35,000.00',
    'N35,000.00',
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
          scrollDirection: Axis.vertical,
          child: Container(
            width: 375,
            height: 812,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 375,
                  height: 179,
                  padding:
                      EdgeInsets.only(bottom: 17, right: 24, left: 24, top: 40),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          child: Container(
                            width: 23,
                            height: 14,
                            child: FaIcon(FontAwesomeIcons.longArrowAltLeft),
                          ),
                          onTap: () {
                            Navigator.pop(context);
                          },
                        ),
                        SizedBox(height: 16),
                        Container(
                          width: 140,
                          height: 29,
                          child: Text(
                            'Search',
                            style: TextStyle(
                                color: Color(0xff819272),
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(height: 16),
                        Container(
                          width: 327,
                          height: 47,
                          decoration: BoxDecoration(
                            color: Color(0xfff7f7f7),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: TextField(
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                prefixIcon: Image.asset(
                                  'assets/images/search.png',
                                  width: 16,
                                  height: 16,
                                  color: Color(0xffbababa),
                                ),
                                hintText: 'Search product',
                                hintStyle: TextStyle(
                                  color: Color(0xffbababa),
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xffffffff).withOpacity(0.1),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 31,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Latest Search',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff10151a),
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Container(
                        height: 20,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Center(
                                child: Image.asset(
                              'assets/images/clock.png',
                              width: 16.67,
                              height: 16.67,
                              color: Color(0xff999999),
                            )),
                            SizedBox(
                              width: 16.67,
                            ),
                            Container(
                              width: 262,
                              height: 20,
                              child: Text(
                                'TMA2 Wireless',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xff10151a),
                                ),
                              ),
                            ),
                            Spacer(),
                            Center(
                                child: Image.asset(
                              'assets/images/x.png',
                              width: 7,
                              height: 7,
                              color: Color(0xff10151a),
                            )),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Divider(
                        thickness: 1,
                        color: Color(0xfff5f5f5),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Center(
                                child: Image.asset(
                              'assets/images/clock.png',
                              width: 16.67,
                              height: 16.67,
                              color: Color(0xff999999),
                            )),
                            SizedBox(
                              width: 16.67,
                            ),
                            Container(
                              width: 262,
                              height: 20,
                              child: Text(
                                'Cable',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xff10151a),
                                ),
                              ),
                            ),
                            Spacer(),
                            Center(
                                child: Image.asset(
                              'assets/images/x.png',
                              width: 7,
                              height: 7,
                              color: Color(0xff10151a),
                            )),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 24),
                  width: 327,
                  height: 386,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Popular Searches',
                        style: TextStyle(
                            color: Color(0xff10151a),
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Expanded(
                        child: Container(
                          width: 327,
                          height: 342,
                          child: ListView.separated(
                            itemCount: imageList.length,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: (){
                                  showProdDetails(
                                      context,
                                      imageList[index],
                                      priceList[index],
                                      vendorList[index],
                                      productList[index]
                                  );
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 82,
                                          width: 75,
                                          child: Image.network(imageList[index]),
                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                    Container(
                                      width: 224,
                                      height: 82,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            productList[index],
                                            style: TextStyle(
                                              color: Color(0xff10151A),
                                              fontSize: 15,
                                            ),
                                          ),
                                          Spacer(),
                                          Text(
                                            vendorList[index],
                                            style: TextStyle(
                                              color: Color(0xffbbbbbb),
                                              fontSize: 13,
                                            ),
                                          ),
                                          Spacer(),
                                          Container(
                                            width: 156,
                                            child: Row(
                                              children: [
                                                Text(
                                                  priceList[index],
                                                  style: TextStyle(
                                                    color: Color(0xffF39E28),
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                Spacer(),
                                                Text('.'),
                                                Spacer(),
                                                Text(
                                                  stockList[index],
                                                  style: TextStyle(
                                                    color: Color(0xff3A953C),
                                                    fontSize: 15,
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
                    ],
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


showProdDetails(
    context,
  image,
  price,
  vendor,
  product,
) {

  return showDialog(
    context:  context,
    builder: (context){
      return Scaffold(
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
                          image: AssetImage(image),
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
                                product,
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff000000),
                                ),
                              ),
                              SizedBox(height: 8,),
                              Text(
                                vendor,
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Color(0xff819272),
                                ),
                              )
                            ],
                          ),
                        ),
                        Spacer(),
                        Image.asset('assets/images/heart.png',
                            width: 20.01, height: 17.65),
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
                          price,
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff000000),
                          ),
                        ),
                        Spacer(),
                        GestureDetector(
                          onTap:(){},
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
    },
  );
}

