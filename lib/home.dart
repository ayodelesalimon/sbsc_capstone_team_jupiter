import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//import 'package:sbsc_capstone_team_jupiter/category/categories_grid.dart';
// import 'package:sbsc_capstone_team_jupiter/screens/cart/cart.dart';
// import 'package:sbsc_capstone_team_jupiter/screens/category/categories_grid.dart';
// import 'package:sbsc_capstone_team_jupiter/widgets/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:sbsc_capstone_team_jupiter/screens/account/profile.dart';
// import 'package:sbsc_capstone_team_jupiter/screens/discover/home.dart';
import 'package:sbsc_capstone_team_jupiter/menu_drawer.dart';
import 'package:sbsc_capstone_team_jupiter/cart.dart';
import 'package:sbsc_capstone_team_jupiter/category.dart';

class HomeScreen extends StatefulWidget {


  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Builder(
            builder: (BuildContext context) {
              return Padding(
                padding: const EdgeInsets.only(left: 24),
                child: IconButton(
                  icon:  Image.asset('assets/menu.png',width: 22,height: 22,),
                  onPressed: () { Scaffold.of(context).openDrawer(); },
                  tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                ),
              );
            },
          ),
          title: Text(
            "Aduaba Fresh",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Color(0xff000000),),
          ),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right:24),
              child: Container(
                height: 30,width: 30,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color:Color(0xff3A953C),
                ),
                child: IconButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>CartPage()),);
                  },
                  icon: Image.asset('assets/images/shop.png',width: 16.13,height:14.36),),
              ),
            ),
          ],
          backgroundColor: Colors.white,
        ),
        // endDrawerEnableOpenDragGesture: false,
        // key: _scaffoldKey,
        drawer: MyDrawer(),
        body: SingleChildScrollView(
            child: Stack(
              children: [
               Container(
              width: 375,
              height: 1267,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 32,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 24),
                          child: Text(
                            "Hi, Andrea",
                            style: TextStyle(fontWeight: FontWeight.normal, fontSize: 17,color: Color(0xff3A683B)),
                          ),
                        ),
                        SizedBox(height: 9),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 24),
                          child: Text(
                            "What are you looking for \n today?",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xff819272),
                                fontSize: 24),
                          ),
                        ),
                        SizedBox(height: 24),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 24),
                          width: 327,
                          height: 47,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              fillColor: Color(0xfff7f7f7),
                              hintText: "Search product",
                              hintStyle: TextStyle(
                                fontSize: 15, color: Color(0xffbababa),
                              ),
                              prefixIcon:
                                 Padding(
                                  padding: const EdgeInsets.only(left: 16,right: 13),
                                  child: Image.asset('assets/images/search.png', width: 16,height: 16,),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 24),
                          height: 20,width: 327,
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Categories",
                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17, color: Color(0xff3C673D),),
                                ),
                                GestureDetector(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => CategoryPage()),);
                                  },
                                  child: Container(
                                    width: 58,height: 16,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Text("View all", style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13, color: Color(0xff999999),),),
                                        Image.asset('assets/images/arrow.png',width: 5.88,height: 10,),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Container(
                          height:50,width:492,
                          margin: EdgeInsets.only(left: 24),
                          child: Categories(),
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 24),
                          height: 20,width: 327,
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Today’s Promo ",
                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17, color: Color(0xff3C673D),),
                                ),
                                GestureDetector(
                                  onTap: (){
                                    // Navigator.of(context).push(
                                    //   MaterialPageRoute(
                                    //     settings: RouteSettings(name: "/categoryPage"),
                                    //     builder: (context) => CategoryGridPage(),
                                    //   ),
                                    // );
                                  },
                                  child: Container(
                                    width: 58,height: 16,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Text("View all", style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13, color: Color(0xff999999),),),
                                        Image.asset('assets/images/arrow.png',width: 5.88,height: 10,),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 16,),

                        Container(
                           width:500, height:181,
                            margin: EdgeInsets.only(left: 24),
                            child: PromoSection(),
                        ),
                        SizedBox(height: 32,),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 24),
                          height: 20,width: 327,
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Best Selling",
                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17, color: Color(0xff3C673D),),
                                ),
                                GestureDetector(
                                  onTap: (){
                                    // Navigator.of(context).push(
                                    //   MaterialPageRoute(
                                    //     settings: RouteSettings(name: "/categoryPage"),
                                    //     builder: (context) => CategoryGridPage(),
                                    //   ),
                                    // );
                                  },
                                  child: Container(
                                    width: 58,height: 16,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Text("View all", style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13, color: Color(0xff999999),),),
                                        Image.asset('assets/images/arrow.png',width: 5.88,height: 10,color: Color(0xff999999),),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          height:259, width:500,
                            margin: EdgeInsets.only(left: 24),
                            child: BestSellSection(),
                        ),
                        SizedBox(height: 36,),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 24),
                          height: 20,width: 327,
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Featured Products",
                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17, color: Color(0xff3C673D),),
                                ),
                                GestureDetector(
                                  onTap: (){
                                    // Navigator.of(context).push(
                                    //   MaterialPageRoute(
                                    //     settings: RouteSettings(name: "/categoryPage"),
                                    //     builder: (context) => CategoryGridPage(),
                                    //   ),
                                    // );
                                  },
                                  child: Container(
                                    width: 58,height: 16,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Text("View all", style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13, color: Color(0xff000000),),),
                                        Image.asset('assets/images/arrow.png',width: 5.88,height: 10,color: Color(0xff000000),),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height:16),
                        Container(
                          height:259, width:500,
                            margin: EdgeInsets.only(left: 24),
                            child: FeaturedProductsSection(),
                        ),
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
        ),
    );
  }
}


class FeaturedProductsSection extends StatelessWidget {
  FeaturedProductsSection();
  @override
  Widget build(BuildContext context) {
    return Container( height: 259,width: 156,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          FeaturedProductsCard("assets/images/coffee.png", "Emmanuel Produce"),
          FeaturedProductsCard("assets/images/strawberry.png", "Emmanuel Produce"),
          FeaturedProductsCard("assets/drugs.png", "Emmanuel Produce"),
        ],
      ),
    );
  }
}



class FeaturedProductsCard extends StatelessWidget {
  const FeaturedProductsCard(this.image, this.name);

  final String image, name;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 16),
      height: 259,width: 156,
      decoration: BoxDecoration(
        color: Color.fromRGBO(104, 117, 130, 0.05),
      ),
      child: ListView(
        children: [
          Stack(
            children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
                borderRadius: BorderRadius.all(Radius.circular(4.0)),
              ),
              height: 156,
              width: 156,
            ),
              Positioned(
               top: 10.25, right: 10.5,
                child:Image.asset('assets/images/heart.png',color: Color(0xffffffff),width: 15.01,height: 13.24,),
              ),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                name, style: TextStyle(fontWeight: FontWeight.w300, fontSize: 10,color: Color(0xff819272)),
              ),
              SizedBox(
                height: 4,
              ),
              Text("Herbsconnect Organic \nAcai Berry Powder Freeze \nDried",style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16,color: Color(0xff000000)),),
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
                    Text("₦35,000.00",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13, color: Color(0xffF39E28),),),
                    Text(".",style: TextStyle( fontSize: 14, color: Color(0xffD8D8D8)),),
                    Text("In stock",style: TextStyle(fontSize: 13, color: Color(0xff3A953C)),),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class BestSellSection extends StatelessWidget {
  BestSellSection();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 259,width: 156,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          BestSellCard("assets/food.png", "Emmanuel Produce"),
          BestSellCard("assets/drugs.png", "Emmanuel Produce"),
          BestSellCard("assets/drugs.png", "Emmanuel Produce"),
        ],
      ),
    );
  }
}

class BestSellCard extends StatelessWidget {
  const BestSellCard(this.image, this.name);

  final String image, name;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 259,width: 156,
      margin: EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        color: Color(0xffe5e5e5),
      ),
      child: ListView(
        children: [
          Stack(
            children: [
              Container(
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
                borderRadius: BorderRadius.all(Radius.circular(4.0)),
              ),
              height: 156,
              width: 156,
            ),
              Positioned(
              top: 10.25, right: 10.5,
                child:Image.asset('assets/images/heart.png',color: Color(0xffffffff),width: 15.01,height: 13.24,),
              ),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                name, style: TextStyle(fontWeight: FontWeight.w300, fontSize: 10,color: Color(0xff819272)),
              ),
              SizedBox(
                height: 4,
              ),
              Text("Herbsconnect Organic \nAcai Berry Powder Freeze \nDried",style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16,color: Color(0xff000000)),),
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
                    Text("₦35,000.00",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13, color: Color(0xffF39E28),),),
                    Text(".",style: TextStyle( fontSize: 14, color: Color(0xffD8D8D8)),),
                    Text("In stock",style: TextStyle(fontSize: 13, color: Color(0xff3A953C)),),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}


class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"text": "Raw Food", "textColor": Color(0xff3A953C), "cardColor": Color(0xff3A953C).withOpacity(0.1)},
      {"text": "Spices", "textColor":  Color(0xffffBB2F48), "cardColor": Color(0xffBB2F48).withOpacity(0.1)},
      {"text": "Bakery", "textColor":  Color(0xff3A953C), "cardColor": Color(0xff3A953C).withOpacity(0.1)},
      {"text": "Cosmetic", "textColor":  Color(0xffffBB2F48), "cardColor": Color(0xffBB2F48).withOpacity(0.1)},
      {"text": "More", "textColor":  Color(0xff3A953C), "cardColor": Color(0xff3A953C).withOpacity(0.1)},
    ];
    return ListView(scrollDirection: Axis.horizontal, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: List.generate(
              categories.length,
                  (index) => Padding(
                padding: EdgeInsets.only(right: 8),
                child: CategoryCard(
                  textColor: categories[index]["textColor"],
                  cardColor: categories[index]["cardColor"],
                  text: categories[index]["text"],
                  press: () {},
                ),
              ),
            ),),
        ],
      );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({required this.text,
    required this.press, required this.textColor,required this.cardColor,
  }) ;

  final String text;
  final Color textColor;
  final Color cardColor;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Row(
        children: [
          Container(
            height: 50,
            width: 92,
            decoration: BoxDecoration(
              color: cardColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(child: Text(text, textAlign: TextAlign.center, style: TextStyle(color: textColor, fontWeight: FontWeight.bold,fontSize: 13),)),),
          SizedBox(width:8),
        ],
      ),
    );
  }
}


class PromoSection extends StatelessWidget {

  PromoSection();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          PromoCard(),
          PromoCard(),
          PromoCard(),
        ],
      ),
    );
  }
}

class PromoCard extends StatelessWidget {
  const PromoCard();
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Color(0xff7f7f7),
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(104, 117, 130, 0.05),
              blurRadius: 4,
            ),
          ],
        ),
        margin: EdgeInsets.only(right: 16),
        height: 181,
        width: 305,
        child:
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 139,
              height: 131,
              margin: EdgeInsets.only(left: 18,top: 18),
              child: ListView(
                children: [
                  Text("Organic Brands", style: TextStyle(color:Color(0xff3A953C), fontWeight: FontWeight.bold, fontSize: 12)),
                  Container(width: 109.35,
                      child: Text("exclusive", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 28,color:Color(0xff10151a),))),
                  Container(width: 109.35,
                      child: Text("brands", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 28,color:Color(0xff10151a),))),
                  SizedBox(height: 8,),
                  Text("Visit our shop for a complete list of our exclusive and premium food brand. ", style: TextStyle(fontWeight: FontWeight.w200, fontSize: 10,color:Color(0xff999999),),),
                  SizedBox(height: 9.5,),
                  Container(
                    width: 74,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Shop now", style: TextStyle(color: Color(0xff8AB543), fontWeight: FontWeight.bold, fontSize: 12),),
                        IconButton(onPressed: (){}, icon: Image.asset('assets/images/shortarrow.png',width: 3.75,height: 7.5,),),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 18),
              child: Image.asset("assets/fruit.png", height: 145, width: 127,),
            ),
          ],
        ),);
  }
}


